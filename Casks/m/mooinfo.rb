cask "mooinfo" do
  version "1.1.3"
  sha256 :no_check
  
  url "https://github.com/rememberber/MooInfo/releases/download/1.1.3/MooInfo_1.1.3.dmg",
      verified: "github.com/p0deje/Maccy/"
  name "MooInfo"
  desc "Welcome to try! A visual implementation of OSHI, to view information about the system and hardware."
  homepage "https://rememberber.github.io/MooInfo/"
  
  app "MooInfo.app"
  
  uninstall quit: "com.luoboduner.moo.info.App"
  
end
