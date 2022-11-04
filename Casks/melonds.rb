cask "melonds" do
  version "0.9.5"
  sha256 "71ff3297cb26b7f8a29cad5cee41a3225017d785c75869a4e3ece563a8c286e9"

  url "https://github.com/Arisotura/melonDS/releases/download/#{version}/melonDS_#{version}_mac_UB2.dmg",
      verified: "github.com/Arisotura/melonDS/"
  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
