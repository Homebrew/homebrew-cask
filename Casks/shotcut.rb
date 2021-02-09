cask "shotcut" do
  version "21.01.29"
  sha256 "b236343f9844bc9cd03177495fc4983b1c353bfb544427f676135bc1d06acf4d"

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
