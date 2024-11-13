cask "ea" do
  version "13.340.0.5853"
  sha256 :no_check

  url "https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EA%20app.dmg",
      verified: "origin-a.akamaihd.net/EA-Desktop-Client-Download/"
  name "EA App"
  desc "Electronic Arts game launcher"
  homepage "https://www.ea.com/ea-app"

  livecheck do
    url "https://autopatch.juno.ea.com/autopatch/upgrade/buckets/999"
    strategy :json do |json|
      json.dig("recommended", "version")
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "EA app.app"

  zap delete: [
        "/Library/Application Support/Electronic Arts",
        "/Library/LaunchDaemons/com.ea.app.backgroundservice.plist",
      ],
      trash:  [
        "~/Library/Application Support/Electronic Arts",
        "~/Library/Caches/EA app",
        "~/Library/Caches/EACrashReporter",
        "~/Library/Caches/EALaunchHelper",
        "~/Library/HTTPStorages/com.EA.EA-app-Migrator",
        "~/Library/LaunchAgents/com.ea.app.backgroundAgent.plist",
        "~/Library/Preferences/com.ea.EACefSubProcessRenderer.plist",
        "~/Library/Saved Application State/com.ea.mac.eaapp.savedState",
      ]
end
