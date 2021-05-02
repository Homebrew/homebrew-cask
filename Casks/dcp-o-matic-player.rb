cask "dcp-o-matic-player" do
  version "2.14.48"
  sha256 "7e4a8cf3ab93ab0e2b6fd18263fd749841306f431534328d363f4eafb683eeb4"

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    url "https://dcpomatic.com/download"
    strategy :page_match
    regex(/href=.*?id=osx[0-9._-]*player[^"']*?version=(\d+(?:\.\d+)*)/i)
  end

  app "DCP-o-matic #{version.major} Player.app"
end
