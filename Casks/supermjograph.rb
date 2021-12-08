cask "supermjograph" do
  version "0.17.1"
  sha256 "d8044df2da0114af8dddecafac015a1489a244499541c0a69be1b23c7cd65da5"

  url "https://downloads.sourceforge.net/mjograph/SuperMjograph/SuperMjograph-#{version}.zip",
      verified: "downloads.sourceforge.net/mjograph/SuperMjograph/"
  name "SuperMjograph"
  desc "Generate scientific graphs from data"
  homepage "https://www.mjograph.net/"

  app "SuperMjograph.app"
end
