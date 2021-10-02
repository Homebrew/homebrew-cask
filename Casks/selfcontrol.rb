cask "selfcontrol" do
  version "4.0"
  sha256 "a0dea76abd3a5ccb7a1ba6241862c960f24d61856f7253f74ebec09fd23b7b74"

  url "https://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  name "SelfControl"
  desc "Block your own access to distracting websites"
  homepage "https://selfcontrolapp.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SelfControl[._-](\d+(?:\.\d+)*)\.zip}i)
  end

  auto_updates true

  app "SelfControl.app"

  zap trash: "~/Library/Preferences/org.eyebeam.SelfControl.plist"
end
