cask "maestral" do
  version "1.9.5"
  sha256 "cd8f393abba8a70794e527ee30c4d3f11b5da6e935fb315fbe6ff00bf8f79e4c"

  url "https://github.com/SamSchott/maestral/releases/download/v#{version}/Maestral-#{version}.dmg",
      verified: "github.com/SamSchott/maestral/"
  name "Maestral"
  desc "Open-source Dropbox client"
  homepage "https://maestral.app/"

  livecheck do
    url "https://maestral.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Maestral.app"
  binary "#{appdir}/Maestral.app/Contents/MacOS/maestral-cli", target: "maestral"

  uninstall quit: "com.samschott.maestral"

  zap trash: [
    "~/Library/Application Support/maestral",
    "~/Library/LaunchAgents/com.samschott.maestral.maestral.plist",
    "~/Library/Logs/maestral",
    "~/Library/Preferences/com.samschott.maestral.plist",
  ]
end
