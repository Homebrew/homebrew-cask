cask "domzilla-caffeine" do
  on_monterey :or_older do
    version "1.2.1"
    sha256 "e96a8b401e3f044d30dc534d1c8aee70930203013cb11c506b83fc6a1d328b06"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "1.3.0"
    sha256 "201f3de57b11e1faec3307f00fb81ecab8ed2c433e94010de88b1edc4edbd15f"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "1.4.2"
    sha256 "2f65f1d083987f455d6a4678ec29ecdd1c346adb6995a0b0936c2d4bfba81207"

    livecheck do
      url "https://www.caffeine-app.net/download"
      strategy :header_match
    end
  end

  url "https://dr-caffeine-mac.s3.amazonaws.com/Caffeine_#{version}.zip",
      verified: "dr-caffeine-mac.s3.amazonaws.com/"
  name "Caffeine"
  desc "Utility that prevents the system from going to sleep"
  homepage "https://www.caffeine-app.net/"

  conflicts_with cask: "caffeine"
  depends_on macos: ">= :big_sur"

  app "Caffeine.app"

  uninstall quit: "net.domzilla.caffeine"

  zap trash: [
    "~/Library/Application Scripts/net.domzilla.caffeine",
    "~/Library/Containers/net.domzilla.caffeine",
  ]
end
