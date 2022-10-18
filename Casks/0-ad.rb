cask "0-ad" do
  arch arm: "osx-aarch64", intel: "osx64"

  version "0.0.26-alpha"
  sha256 arm:   "3ef9a974ffa6f32577ba54f73b34a9d81a3798781fd8e30ea836626e3fdd3ac5",
         intel: "f8f0f9237d33f3b2acabc1d5b50ee6da32768231d5610a2ff52d1e65df76bf2c"

  url "https://releases.wildfiregames.com/0ad-#{version}-#{arch}.dmg",
      verified: "releases.wildfiregames.com/"
  name "0 A.D."
  desc "Real-time strategy game"
  homepage "https://play0ad.com/"

  livecheck do
    url "https://play0ad.com/download/mac/"
    regex(/href=.*?0ad[._-]v?(.*?)-osx64\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "0 A.D..app"

  zap trash: "~/Library/Saved Application State/com.wildfiregames.0ad.savedState"
end
