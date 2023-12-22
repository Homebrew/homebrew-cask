cask "fliqlo" do
  version "1.9"
  sha256 "84b6087606ade609553ab6eca2d9bf74461862ac1f20f4bbed514670f23c09f5"

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
