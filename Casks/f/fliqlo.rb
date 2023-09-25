cask "fliqlo" do
  version "1.8.6"
  sha256 "68a427ee46943627f4186597838a76a8f4a7d594e1e0c1ef12036ca6823d5fa0"

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
