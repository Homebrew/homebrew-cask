cask "dcp-o-matic-player" do
  version "2.14.56"
  sha256 "fee4792e65561b82df69488e115dc0da9be7860f6f87a9e48ca68b7f3a115313"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/href=.*?id=osx[0-9._-]*player[^"']*?version=(\d+(?:\.\d+)+)/i)
  end

  app "DCP-o-matic #{version.major} Player.app"
end
