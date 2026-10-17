cask "eigent" do
  arch arm: "-arm64"

  version "1.0.6"
  sha256 arm:   "720c9dfd6e626d923a8b76f9c3a9847dd3d45554e76853a62e64a9e4535b464b",
         intel: "8543c6fb455d363bc82d8b8b9c8359f5fb4a2373974038943e17f415ddffb743"

  url "https://github.com/eigent-ai/eigent/releases/download/v#{version}/Eigent-#{version}#{arch}.dmg"
  name "Eigent"
  desc "Desktop AI agent"
  homepage "https://www.eigent.ai/"

  # Not every GitHub release provides a file for each architecture, so we check multiple
  # recent releases instead of only the "latest" release.
  livecheck do
    url :url
    regex(/^Eigent[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg$/i)
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"] || release["prerelease"]

        release["assets"]&.map do |asset|
          match = asset["name"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  depends_on :macos

  app "Eigent.app"

  uninstall quit: "com.eigent.app"

  zap trash: [
    "~/.eigent",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eigent.app.sfl*",
    "~/Library/Application Support/eigent",
    "~/Library/Logs/eigent",
    "~/Library/Preferences/com.eigent.app.plist",
  ]
end
