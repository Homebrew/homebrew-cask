cask "shotcut" do
  version "20.09.13"
  sha256 "c7ae2a238e09b0b9eb4e8ec3ae458095dca7a20d2c15d2c7b1bc11e5243b8d89"

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  desc "Cross-platform and open-source video editor"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
