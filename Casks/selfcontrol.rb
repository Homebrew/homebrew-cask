cask "selfcontrol" do
  version "2.3.2"
  sha256 "199b4375c4930edf6136ec415b6fc15069243bc201210d9aab532e9a6e625241"

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  name "SelfControl"
  homepage "https://selfcontrolapp.com/"

  livecheck do
    url "https://selfcontrolapp.com/SelfControlAppcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "SelfControl.app"

  zap trash: "~/Library/Preferences/org.eyebeam.SelfControl.plist"
end
