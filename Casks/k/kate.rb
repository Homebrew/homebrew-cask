cask "kate" do
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "df70af80749f8133ca3f16b0faa527ef31e9b95362c931e4b2825298d0f28962",
         intel: "bc9f888573fe01fda4a1f033cff2ca1e9796e82cf705a77072f2c303a450f374"

  on_arm do
    version "26.12,12975"
  end
  on_intel do
    version "26.12,12975"
  end

  url "https://cdn.kde.org/ci-builds/utilities/kate/release-#{version.csv.first}/macos-#{arch}/kate-release_#{version.csv.first}-#{version.csv.second}-macos-clang-#{arch}.dmg"
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
  command_wrapper "kate",
                  executable: "#{appdir}/Kate.app/Contents/MacOS/kate"

  zap trash: [
    "~/Library/Application Support/kate",
    "~/Library/Caches/kate",
    "~/Library/Preferences/kate*",
    "~/Library/Preferences/org.kde.kate.plist",
    "~/Library/Preferences/State/katestaterc",
    "~/Library/Preferences/State/UserFeedback.org.kde.kate",
    "~/Library/Saved Application State/org.kde.kate.savedState",
  ]
end
