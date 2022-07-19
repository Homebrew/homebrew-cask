cask "drawpile" do
  if MacOS.version <= :el_capitan
    version "2.1.7"
    sha256 "820ec2837d3c7ea4e190a64cbb1d0fdecb3797bf968277b3b7ca0cc5d758987f"
  else
    version "2.1.20"
    sha256 "fe7f93c2f3ec9505b8a4f044093b67bae0c80fc8d6613ba2d0dfad5243cfdf44"

    livecheck do
      url "drawpile.net/download/"
      regex(/href=.*?drawpile%20(\d+(?:\.\d+)+)\.dmg.*?Drawpile/i)
      strategy :page_match do |page, regex|
        page.scan(regex).join
      end
    end
  end

  url "https://drawpile.net/files/osx/Drawpile%20#{version}.dmg"
  name "Drawpile"
  desc "Collaborative drawing app"
  homepage "https://drawpile.net/"

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]
end
