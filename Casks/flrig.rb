cask "flrig" do
  version "1.3.54"
  sha256 "76e4fc5dd3f83dd4e91462ec706be0397be45a92f9f51fe3a7444b7c72c301c5"

  url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_x86_64.dmg"
  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    strategy :page_match
    regex(%r{flrig-(\d+(?:\.\d+)*)_x86_64\.dmg}i)
  end

  preflight do
    staged_path.glob("flrig-*.app").first.rename(staged_path/"flrig.app")
  end

  app "flrig.app"

  zap trash: "~/.flrig"
end
