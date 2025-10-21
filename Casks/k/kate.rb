cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  version "25.08,10459"
  sha256 arm:   "10ef145d9a2d5bbe9d45b859dd365514b50d7dae8037ff66fa374f5ca200135e",
         intel: "c5b54c5bf3f5a0e1d5694408c0801acf032706ef185aaeb4fc5be65879657721"

  url "https://cdn.kde.org/ci-builds/utilities/kate/release-#{version.csv.first}/macos-#{arch}/kate-release_#{version.csv.first}-#{version.csv.second}-macos-clang-#{arch}.dmg",
      verified: "cdn.kde.org/ci-builds/utilities/kate/"
  name "Kate"
  desc "Multi-document editor by KDE"
  homepage "https://kate-editor.org/"

  livecheck do
    url "https://cdn.kde.org/ci-builds/utilities/kate/"
    regex(/href=.*?kate-release[._-]v?(\d+(?:[.-]\d+)+)[^"' >]*?[._-]#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      # Find the release directory with the highest version
      release_dir = page.scan(%r{href=["']?(release[._-]v?(\d+(?:\.\d+)*))/?["' >]}i)
                        .max_by { |match| Version.new(match[1]) }
                        &.first
      next unless release_dir

      # Fetch the release directory listing page
      builds_page = Homebrew::Livecheck::Strategy.page_content(
        "https://cdn.kde.org/ci-builds/utilities/kate/#{release_dir}/macos-#{arch}/",
      )
      next if (builds_content = builds_page[:content]).blank?

      builds_content.scan(regex).map { |match| match[0].tr("-", ",") }
    end
  end

  depends_on macos: ">= :monterey"

  app "kate.app"
  shimscript = "#{staged_path}/kate.wrapper.sh"
  binary shimscript, target: "kate"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/bash
      exec '#{appdir}/Kate.app/Contents/MacOS/kate' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/kate",
    "~/Library/Caches/kate",
    "~/Library/Preferences/org.kde.kate.plist",
    "~/Library/Saved Application State/org.kde.kate.savedState",
  ]
end
