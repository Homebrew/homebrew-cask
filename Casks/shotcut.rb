cask "shotcut" do
  version "20.09.27"
  sha256 "9cd5eebc09d0ac8c6be834fbba920efe0b8ee05621757a1301e736a384b20650"

  # github.com/mltframework/shotcut/ was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  desc "Cross-platform and open-source video editor"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
