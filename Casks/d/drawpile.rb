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
    version "2.2.2"
    sha256 arm:   "06c9a282761d79d0f41402fa56996388da3b861363a61d6213430238a2c068b4",
           intel: "8dd6f517c9fbbe767570d4fc1a01bef3ddef03328606b517623c8eac4409cb8c"

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

  depends_on macos: ">= :high_sierra"

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]
end
