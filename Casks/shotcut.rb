cask "shotcut" do
  version "20.11.28"
  sha256 "a2d72ff4302ef5d08b379d605907dc061ed10c53a6478458c2098be0712456cc"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  desc "Cross-platform and open-source video editor"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
