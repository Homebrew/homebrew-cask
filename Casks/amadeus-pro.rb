cask "amadeus-pro" do
  version "2.8.4"
  sha256 "34d89cb521e7bccef39c02f07ec5dbf25d5255a5e93d563e4b774c79a5a5829e"

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip"
  appcast "https://www.hairersoft.com/pro.html"
  name "Amadeus Pro"
  desc "Multi-purpose audio recorder, editor and converter"
  homepage "https://www.hairersoft.com/pro.html"

  app "Amadeus Pro.app"
end
