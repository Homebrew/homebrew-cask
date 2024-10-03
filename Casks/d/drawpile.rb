cask "drawpile" do
  on_el_capitan :or_older do
    version "2.1.7"
    sha256 "820ec2837d3c7ea4e190a64cbb1d0fdecb3797bf968277b3b7ca0cc5d758987f"

    url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile.#{version}.dmg",
        verified: "github.com/drawpile/Drawpile"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "2.1.20"
    sha256 "fe7f93c2f3ec9505b8a4f044093b67bae0c80fc8d6613ba2d0dfad5243cfdf44"

    url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile.#{version}.dmg",
        verified: "github.com/drawpile/Drawpile"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra :or_newer do
    version "2.2.1"
    sha256 "d4b29c78da9a64eb8a5526c464f9647b48a99b60cace0ce3eaf06a4e484dec60"

    url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile-#{version}.dmg",
        verified: "github.com/drawpile/Drawpile"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

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
