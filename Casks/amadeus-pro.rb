cask "amadeus-pro" do
  version "2.8.4,2525"
  sha256 :no_check

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip"
  appcast "https://www.hairersoft.com/pro.html"
  name "Amadeus Pro"
  desc "Multi-purpose audio recorder, editor and converter"
  homepage "https://www.hairersoft.com/pro.html"

  app "Amadeus Pro.app"
end
