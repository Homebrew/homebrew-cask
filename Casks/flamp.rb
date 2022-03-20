cask "flamp" do
  version "2.2.07"

  if MacOS.version <= :catalina
    sha256 "c25d69ad0f53d45fb2d368ab90dca8aa92376362e1e3fb56617e01024abfa383"
    url "http://www.w1hkj.com/files/flamp/flamp-#{version}_HS.dmg"
  else
    sha256 "2e9e764bfbeca5b9b9a859c4d8721152d800931b0c38946def48023e23626549"
    url "http://www.w1hkj.com/files/flamp/flamp-#{version}_bs.dmg"
  end

  name "flamp"
  desc "Ham radio Amateur Multicast Protocol - File Transfer"
  homepage "http://www.w1hkj.com/"

  livecheck do
    url "http://www.w1hkj.com/files/flamp/"
    strategy :page_match
    regex(/flamp[._-]v?(\d+(?:\.\d+)+)\w*\.dmg/i)
  end

  app "flamp.app"

  preflight do
    staged_path.glob("flamp-*.app").first.rename(staged_path/"flamp.app")
  end

  zap trash: "~/.flamp"
end
