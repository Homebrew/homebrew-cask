cask "beatport-pro" do
  version "2.4.6_196"
  sha256 "839da8e6d0681cc3b4bf4563e6b966e9133296884026d09d45939438292be737"

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast "https://pro.beatport.com/mac/appcast.xml"
  name "Beatport Pro"
  homepage "https://www.beatport.com/"

  app "Beatport Pro.app"
end
