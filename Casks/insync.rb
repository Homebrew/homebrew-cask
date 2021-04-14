cask "insync" do
  version "3.3.8.40942"
  sha256 "0c56d4e41411ff5aa951beca054395559cbb89759971dc9fa6e4dcc23716c8bf"

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
