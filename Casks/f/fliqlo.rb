cask "fliqlo" do
  on_ventura :or_older do
    version "1.8.6"
    sha256 "a0d0fac34347cba027e067ad46b04efcff2220f7d5e712de4dcaaf9844c31c1a"

    livecheck do
      skip "Legacy version"
    end

    screen_saver "Fliqlo.saver"
  end
  on_sonoma :or_newer do
    version "2.3"
    sha256 "55be5f1b46af7598a238b2bdb2a2cf45e96eeeada77bdba8fd8dbf9f999852f9"

    livecheck do
      url :homepage
      regex(/href=.*?Fliqlo%20v?(\d+(?:\.\d+)+)\.dmg/i)
    end

    app "Fliqlo.app"
  end

  url "https://fliqlo.com/download/Fliqlo%20#{version}.dmg",
      referer: "https://fliqlo.com/#about"
  name "Fliqlo"
  desc "Flip clock screensaver"
  homepage "https://fliqlo.com/"

  depends_on :macos

  zap trash: [
    "/Library/Screen Savers/Fliqlo.saver",
    "~/Library/Application Scripts/com.9031.fliqloMA",
    "~/Library/Containers/com.9031.fliqloMA",
  ]
end
