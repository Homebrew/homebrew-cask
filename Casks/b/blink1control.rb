cask "blink1control" do
  # NOTE: "1" is not a version number, but an intrinsic part of the product name
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "4b05ba63024c00c1226acdd48337fc0258d6cfb045d6ae720e588e11da78d13c",
         intel: "778dad2b5914e6e2cb792260e24fed3a490a3d762c6693033fa89472720ce737"

  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac-#{arch}.dmg",
      verified: "github.com/todbot/Blink1Control2/"
  name "Blink1Control"
  desc "Utility to control blink(1) USB RGB LED devices"
  homepage "https://blink1.thingm.com/"

  depends_on macos: ">= :big_sur"

  app "Blink1Control#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Blink1Control#{version.major}",
    "~/Library/Logs/Blink1Control#{version.major}",
    "~/Library/Preferences/com.thingm.blink1control#{version.major}.plist",
    "~/Library/Saved Application State/com.thingm.blink1control#{version.major}.savedState",
  ]
end
