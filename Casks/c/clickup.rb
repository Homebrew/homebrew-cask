cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.5.139,250828m7ieelx7h"
  sha256 arm:   "b0b596ae279e2958ece6a2bfeca552201485476d48f0b8da10736d432607bad1",
         intel: "4da1340cfeb95d91b86664272bed85a612a63b7b630e93202f7deabad466657c"

  url "https://download.todesktop.com/221003ra4tebclw/ClickUp%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg",
      verified: "download.todesktop.com/221003ra4tebclw/"
  name "ClickUp"
  desc "Productivity platform for tasks, docs, goals, and chat"
  homepage "https://clickup.com/"

  # NOTE: The magic string in the URL (e.g. `221003ra4tebclw`) may need to be
  # updated over time, as the existing URL may only return an old version.
  livecheck do
    url "https://download.todesktop.com/221003ra4tebclw/latest-mac.yml"
    regex(/ClickUp\s*v?(\d+(?:\.\d+)+).*?Build\s*([a-z0-9]+)[._-]#{arch}\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "ClickUp.app"

  zap trash: [
    "~/Library/Application Support/ClickUp Desktop",
    "~/Library/Application Support/ClickUp",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.clickup.desktop-app.sfl*",
    "~/Library/Caches/com.clickup.desktop-app",
    "~/Library/Caches/com.clickup.desktop-app.ShipIt",
    "~/Library/Logs/ClickUp",
    "~/Library/Preferences/com.clickup.desktop-app.plist",
    "~/Library/Saved Application State/com.clickup.desktop-app.savedState",
  ]
end
