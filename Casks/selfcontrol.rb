cask "selfcontrol" do
  version "3.0.3"
  sha256 "4ab3b5d07613264a5f6cd321e5020a1bbda1c8e04c642f131a9758ba20348858"

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast "https://selfcontrolapp.com/SelfControlAppcast.xml"
  name "SelfControl"
  homepage "https://selfcontrolapp.com/"

  auto_updates true

  app "SelfControl.app"

  zap trash: "~/Library/Preferences/org.eyebeam.SelfControl.plist"
end
