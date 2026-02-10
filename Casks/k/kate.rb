cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  version "25.12,11105"
  sha256 arm:   "3630f2bd7898899a2d6fcda786f2f6f8916dd469ef1c9b4fab40c71895c55be5",
         intel: "5492b5711a56465a0e426ca88ec053fdd0ec6b76964c6bc3e6ae7ab6822c35d3"

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

  depends_on macos: ">= :ventura"

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
