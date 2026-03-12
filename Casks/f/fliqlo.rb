cask "fliqlo" do
  on_ventura :or_older do
    version "1.8.6"
    sha256 "a0d0fac34347cba027e067ad46b04efcff2220f7d5e712de4dcaaf9844c31c1a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "1.9.5"
    sha256 "1ddea8596ccc9aaf60d49dc4cd2293bfe9be694c8daf5c3918153c89906a755b"

    livecheck do
      url :homepage
      regex(/href=.*?Fliqlo%20v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: "https://fliqlo.com/#about"
  name "Fliqlo"
  desc "Flip clock screensaver"
  homepage "https://fliqlo.com/"

  screen_saver "Fliqlo.saver"

  zap trash: "/Library/Screen Savers/Fliqlo.saver"
end
