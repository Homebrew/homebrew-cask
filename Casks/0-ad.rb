cask "0-ad" do
  if MacOS.version <= :el_capitan
    version "0.0.23b-alpha"
    sha256 "5fae1331bb1778bf16e49460fb850270b6cd76bee6483078ff27582e71ab263f"
    app "0 A.D.app"
  else
    version "0.0.24b-alpha"
    sha256 "483bfdff249ff93435a4638631b47b4037b43e44719ba2efdc10f7f76771fc33"
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
