cask "0-ad" do
  if MacOS.version <= :el_capitan
    version "0.0.23b-alpha"
    sha256 "5fae1331bb1778bf16e49460fb850270b6cd76bee6483078ff27582e71ab263f"
    app "0 A.D.app"
  else
    version "0.0.24-alpha"
    sha256 "a7164b407f5b20747dd4eba97a38b3c8d2f0af72bf92829bf0f1b0b27a0b36f7"
    app "0 A.D..app"
  end

  url "https://releases.wildfiregames.com/0ad-#{version}-osx64.dmg",
      verified: "releases.wildfiregames.com/"
  name "0 A.D."
  desc "Real-time strategy game"
  homepage "https://play0ad.com/"

  livecheck do
    url "https://play0ad.com/download/mac/"
    regex(/href=.*?0ad[._-]v?(.*?)-osx64\.dmg/i)
  end
end
