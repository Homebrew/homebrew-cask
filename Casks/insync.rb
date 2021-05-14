cask "insync" do
  version "3.3.9.40955"
  sha256 "24a169d1a1684b17915066de041bd6ba5d598b671f3293c34a219fdff4df6c68"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/Version\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Insync.app"
end
