cask "0-ad" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.27.0"
  sha256 arm:   "21decc117d06fe882f491b101ca533e09174a47c7f5139fcb8160cd15a91d6e3",
         intel: "bca8deb6461c8055e4f34216867d439a22657a13dfbc7c98e0f8497d8c8643cd"

  url "https://releases.wildfiregames.com/0ad-#{version}-macos-#{arch}.dmg",
      verified: "releases.wildfiregames.com/"
  name "0 A.D."
  desc "Real-time strategy game"
  homepage "https://play0ad.com/"

  livecheck do
    url "https://play0ad.com/download/mac/"
    regex(/href=.*?0ad[._-]v?(.*?)[._-]macos[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :sierra"

  app "0 A.D..app"

  zap trash: "~/Library/Saved Application State/com.wildfiregames.0ad.savedState"
end
