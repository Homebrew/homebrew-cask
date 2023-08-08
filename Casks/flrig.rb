cask "flrig" do
  version "2.0.02"

  on_sierra :or_older do
    sha256 "5c8bcb3c3d0c33183fad9a86a894f66a226e8614659b020f49b4b28f34551a5f"

    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_LI.dmg"
  end
  on_high_sierra :or_newer do
    sha256 "e0c215b6037c3c15a03454248b4d64251c14298eb48a33d3aee6f69133a2fcdf"

    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_VN.dmg"
  end

  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(/flrig[._-]v?(\d+(?:\.\d+)+)\w*\.dmg/i)
    strategy :page_match
  end

  app "flrig.app"

  preflight do
    staged_path.glob("flrig-*.app").first.rename(staged_path/"flrig.app")
  end

  zap trash: "~/.flrig"
end
