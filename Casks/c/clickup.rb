cask "clickup" do
  arch arm: "arm64", intel: "x64"

  version "3.5.262,260717dcrpwg7m0"
  sha256 arm:   "76168f07eeddcab9f0ab967e1c2be6f0a6a0450625ca1369835f6ceb8d4e2a01",
         intel: "cb433840a43593ec45ab7f5486098cf01a0cf63d8211a3e2e3736a63f0e23ba3"

  url "https://download.todesktop.com/221003ra4tebclw/ClickUp%20#{version.csv.first}%20-%20Build%20#{version.csv.second}-#{arch}.dmg"
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
  depends_on macos: :monterey

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
