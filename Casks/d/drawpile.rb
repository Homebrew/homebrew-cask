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
    sha256 arm:   "59b1ff5b42bb1ded49be5070f290429a37d0d7a723fed07a6ec51ec79cdea7a9",
           intel: "56d484ea4ea32fccbc6015eedb5d80f1f4f77fa018b8724e2d9499368c70a922"

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

  depends_on macos: ">= :high_sierra"

  app "Drawpile.app"

  zap trash: [
    "~/Library/Application Support/drawpile",
    "~/Library/Preferences/net.drawpile.drawpile.plist",
    "~/Library/Preferences/net.drawpile.DrawpileClient.plist",
    "~/Library/Saved Application State/net.drawpile.DrawpileClient.savedState",
  ]
end
