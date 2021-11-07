cask "insync" do
  version "3.5.4.50130"
  sha256 "90976ca9abbf507ea9d897eda719acb4c819452bbc03bc027c75451674b612de"

  url "http://s.insynchq.com/builds/Insync-#{version}.dmg"
  name "Insync"
  desc "Manage your Google Drive and OneDrive files"
  homepage "https://www.insynchq.com/"

  livecheck do
    url :homepage
    regex(%r{/Insync[._-]?v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  auto_updates true

  app "Insync.app"
end
