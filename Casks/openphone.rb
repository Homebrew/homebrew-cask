cask "openphone" do
  version "2.0.0"
  sha256 "a7b7fb7f8ba608afd85791e1989255231781c4a1689b73bfcfae6833978c9726"

  url "https://download.openphone.co/OpenPhone-#{version}.dmg"
  appcast "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
  name "OpenPhone"
  homepage "https://www.openphone.co/desktop"

  app "OpenPhone.app"
end
