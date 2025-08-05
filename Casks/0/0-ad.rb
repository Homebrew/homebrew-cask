cask "0-ad" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.27.1"
  sha256 arm:   "12f6b86104ec5023233221e044baeffa572a1ad13db6f99db72f106bc6936032",
         intel: "dd5c83759ef31bcf6f565e6ac558fe0cdae43b9eb0bed6e29cbb5b8ea8e5b700"

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
