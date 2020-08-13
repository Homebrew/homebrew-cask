cask "beatport-pro" do
  version "2.4.5_188"
  sha256 "8582347568c236695c24855d2fc32311961f58fe8b2b240819cf9eaa327bbd66"

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast "https://pro.beatport.com/mac/appcast.xml"
  name "Beatport Pro"
  homepage "https://www.beatport.com/"

  app "Beatport Pro.app"
end
