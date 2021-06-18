cask "insync" do
  version "3.4.0.40973"
  sha256 "95ad46f36e02df1728bd62ce2348d79feece97b88718bedaf9ac97d62fd0efa6"

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
