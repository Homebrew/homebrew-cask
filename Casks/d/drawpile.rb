cask "drawpile" do
  on_el_capitan :or_older do
    version "2.1.7"
    sha256 "820ec2837d3c7ea4e190a64cbb1d0fdecb3797bf968277b3b7ca0cc5d758987f"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra :or_newer do
    version "2.1.20"
    sha256 "fe7f93c2f3ec9505b8a4f044093b67bae0c80fc8d6613ba2d0dfad5243cfdf44"

    livecheck do
      url "https://drawpile.net/files/osx/"
      regex(/href=.*?Drawpile[ ._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    end
  end

  url "https://drawpile.net/files/osx/Drawpile%20#{version}.dmg"
  name "Drawpile"
  desc "Collaborative drawing app"
  homepage "https://drawpile.net/"

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
