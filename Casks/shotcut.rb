cask "shotcut" do
  version "20.11.25"
  sha256 "6965a4b792a494d809b334f28495a94228475873b1181095d01c5a699f9192e6"

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  desc "Cross-platform and open-source video editor"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
