cask "shotcut" do
  version "21.02.27"
  sha256 "4de40821778f8755c863d632c19e5588a53a8a41379fb0f6551cf9d7331048c4"

  url "https://github.com/mltframework/shotcut/releases/download/v#{version}/shotcut-macos-signed-#{version.no_dots}.dmg",
      verified: "github.com/mltframework/shotcut/"
  name "Shotcut"
  desc "Video editor"
  homepage "https://www.shotcut.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Shotcut.app"
end
