cask "eigent" do
  arch arm: "-arm64"

  version "1.0.4"
  sha256 arm:   "2f05a18ea7f5d7c1d62add5ce7aacf1c0330af7d7bc07e98902c3860a44480dd",
         intel: "45d23b31a5b4d44aa822915455a3bf97ab68c5a69e00789ec64276204213cdc4"

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

  depends_on macos: :big_sur

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
