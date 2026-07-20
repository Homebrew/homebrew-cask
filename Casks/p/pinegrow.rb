cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "9.3"
  sha256 arm:   "2bbdbe17643607e3aefc67322709f7f826cf72ffd1bd6198d40a7d496e5686f5",
         intel: "310c6dfc86577d1ee26b25d07b27aea2108a5f7eb5bb70a10b5de80271141b98"

  url "https://github.com/Pinegrow/PinegrowReleases/releases/download/pg#{version}/PinegrowMac#{arch}.#{version}.dmg",
      verified: "github.com/Pinegrow/PinegrowReleases/"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^pg(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
