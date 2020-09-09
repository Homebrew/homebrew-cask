cask "shotcut" do
  version "20.09.01"
  sha256 "c3838f2c7c09ba749c5f66bbf03c8041795ed0b2c38a2f32654e8bf85ac7a806"

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
