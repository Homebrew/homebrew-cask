cask "fliqlo" do
  version "1.8.5"
  sha256 "77ee36b9d123e33d04234c27d507db6a688dcad557954db5b6f26eb3c6e7d3b3"

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
