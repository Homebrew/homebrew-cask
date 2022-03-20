cask "flmsg" do
  version "4.0.19"
  
  if MacOS.version <= :catalina
    sha256 "a3176e35f0c4ae322c640138e43486c495009fe6648585f29c9bddec5816fd05"
    url "http://www.w1hkj.com/files/flmsg/flmsg-#{version}_hs.dmg"
  else
    sha256 "6fd6a106116130899f8bd0d6a821eb1e71b71d26dc290f66f847e97a407ae8dd"
    url "http://www.w1hkj.com/files/flmsg/flmsg-#{version}_bs.dmg"
  end

  name "flmsg"
  desc "Ham radio ANBEMS messaging system"
  homepage "http://www.w1hkj.com/"

  livecheck do
    url "http://www.w1hkj.com/files/flmsg/"
    strategy :page_match
    regex(/flmsg[._-]v?(\d+(?:\.\d+)+)\w*\.dmg/i)
  end

  app "flmsg.app"

  preflight do
    staged_path.glob("flmsg-*.app").first.rename(staged_path/"flmsg.app")
  end

  zap trash: "~/.flmsg"
end