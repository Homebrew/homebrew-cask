cask "melonds" do
  version "0.9.5"
  sha256 "649f9926894faf0776524a0885ecbe10eb9c5bd8b53ed1b33207ac464bd5a2f1"

  url "https://github.com/melonDS-emu/melonDS/releases/download/#{version}/melonDS_#{version}_mac_UB2.dmg",
      verified: "github.com/melonDS-emu/melonDS/"
  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "https://melonds.kuribo64.net/"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
