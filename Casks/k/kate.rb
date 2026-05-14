cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  version "26.04,11673"
  sha256 arm:   "996f3efd4ef3ec8714a87dd543d834d5fe5a31bb44eed2aa204b9fc41d59db70",
         intel: "823ba9def2702f2cc89ed452180e9c0d40feb8d8dff465a2f0fd516fed60e7ba"

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

  depends_on macos: :ventura

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
