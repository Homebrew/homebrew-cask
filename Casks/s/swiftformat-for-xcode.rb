cask "swiftformat-for-xcode" do
  version "0.58.2"
  sha256 "c95cb9d0d0b7e3a661250f5d7352a91957965ffa5bcda68c93ff99844708f43d"

  url "https://github.com/nicklockwood/SwiftFormat/releases/download/#{version}/SwiftFormat.for.Xcode.app.zip"
  name "SwiftFormat for Xcode"
  desc "Xcode Extension for reformatting Swift code"
  homepage "https://github.com/nicklockwood/SwiftFormat"

  # Not every GitHub release provides a file for macOS or each arch
  # so we check multiple recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/SwiftFormat[._-]for[._-]Xcode(?:\.app)?\.zip/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          release["tag_name"]&.[](/^v?(\d+(?:\.\d+)+)$/i, 1)
        end
      end.flatten
    end
  end

  app "SwiftFormat for Xcode.app"

  zap trash: [
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Application Scripts/com.charcoaldesign.SwiftFormat-for-Xcode.SourceEditorExtension",
    "~/Library/Containers/com.charcoaldesign.SwiftFormat-for-Xcode",
    "~/Library/Group Containers/com.charcoaldesign.SwiftFormat",
  ]
end
