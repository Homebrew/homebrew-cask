cask "drawpile" do
  arch arm: "arm64", intel: "x86_64"

  on_big_sur :or_older do
    version "2.2.1"
    sha256 "d4b29c78da9a64eb8a5526c464f9647b48a99b60cace0ce3eaf06a4e484dec60"

    url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile-#{version}.dmg",
        verified: "github.com/drawpile/Drawpile"

    livecheck do
      skip "Legacy version"
    end

    caveats do
      requires_rosetta
    end
  end
  on_monterey :or_newer do
    version "2.3.0"
    sha256 arm:   "d6ba02a723b57ca83a523ea61b192b349005c8c3f8a10579877477d5b652409c",
           intel: "09eeff8bacc62200f810c8be89dcb595e0a069efd9ca9659b6f97f50c1244573"

    url "https://github.com/drawpile/Drawpile/releases/download/#{version}/Drawpile-#{version}-#{arch}.dmg",
        verified: "github.com/drawpile/Drawpile"

    livecheck do
      url :url
      strategy :github_latest
    end
  end

  name "Drawpile"
  desc "Collaborative drawing app"
  homepage "https://drawpile.net/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]
end
