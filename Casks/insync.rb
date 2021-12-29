cask "insync" do
  version "3.7.0.50216"
  sha256 "6618c70cda9441b3dbdf8531f66778a6e09cd70538b6eeff23832a00f1b81ed0"

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
