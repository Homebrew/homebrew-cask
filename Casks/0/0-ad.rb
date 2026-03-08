cask "0-ad" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.28.0"
  sha256 arm:   "8c53566123fed9a79766c364e543d6e9dc7c84f642c78d2bb5892eeea9c4c052",
         intel: "3d30cbafb293fb1178c08075ed8336d1dbfb1090d3702ada76092e85e9c4f076"

  url "https://releases.wildfiregames.com/0ad-#{version}-macos-#{arch}.dmg",
      verified: "releases.wildfiregames.com/"
  name "0 A.D."
  desc "Real-time strategy game"
  homepage "https://play0ad.com/"

  livecheck do
    url "https://play0ad.com/download/mac/"
    regex(/href=.*?0ad[._-]v?(.*?)[._-]macos[._-]#{arch}\.dmg/i)
  end

  app "0 A.D..app"

  zap trash: "~/Library/Saved Application State/com.wildfiregames.0ad.savedState"
end
