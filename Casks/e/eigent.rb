cask "eigent" do
  arch arm: "-arm64"

  sha256 arm:   "e1df97467f6e1a357ba9b6a938a9795a1db56e876faf49a4737bc569a618664b",
         intel: "fd37ec2f77a785117af6a34e685be13fd0b5f3b7a10c36ead8e5d7df92d5a43a"

  on_arm do
    version "0.0.82"
  end
  on_intel do
    version "0.0.80"
  end

  url "https://github.com/eigent-ai/eigent/releases/download/v#{version}/Eigent-#{version}#{arch}.dmg",
      verified: "github.com/eigent-ai/eigent/"
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

  depends_on macos: ">= :big_sur"

  app "Eigent.app"

  zap trash: [
    "~/.eigent",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.eigent.app.sfl*",
    "~/Library/Application Support/eigent",
    "~/Library/Logs/eigent",
    "~/Library/Preferences/com.eigent.app.plist",
  ]
end
