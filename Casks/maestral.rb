cask "maestral" do
  version "1.6.1"
  sha256 "23547bb8609046347be83246e910fb24e1f9cd54954da143d6e2c36df91b9637"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg",
      verified: "github.com/SamSchott/maestral/"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Maestral.app"
  binary "#{appdir}/Maestral.app/Contents/MacOS/maestral-cli", target: "maestral"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
