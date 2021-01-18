cask "shotcut" do
  version "21.01.16"
  sha256 "7f234a42286935f8ea8403d4a0b934e8b6c41cb83b4f3815a5576bd86311d4d8"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  appcast "https://github.com/mltframework/shotcut/releases.atom"
  name "Shotcut"
  desc "Cross-platform and open-source video editor"
  homepage "https://www.shotcut.org/"

  app "Shotcut.app"
end
