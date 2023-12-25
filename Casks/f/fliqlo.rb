cask "fliqlo" do
  version "1.9.1"
  sha256 "99785b30f28e4b252950758d944d4f2e822daf597de5f2612ab778321cb4a677"

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: "https://fliqlo.com/#about"
  name "Fliqlo"
  desc "Flip clock screensaver"
  homepage "https://fliqlo.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Fliqlo%20v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  screen_saver "Fliqlo.saver"

  zap trash: "/Library/Screen Savers/Fliqlo.saver"
end
