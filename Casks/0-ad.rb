cask "0-ad" do
  version "0.0.25-alpha"
  sha256 "8be21a9a2859580729ea90ab7a53c36663368d7d77e22bbded8a48164a51bc0d"

  url "https://releases.wildfiregames.com/0ad-#{version}-osx64.dmg",
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
end
