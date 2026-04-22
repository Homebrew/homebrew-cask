cask "dcp-o-matic-player" do
  version "2.18.38"
  sha256 "04586d07a8863d9bc058c5916a00665b3ce6945758228ac029a779e8e1994eb0"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: ">= :big_sur"

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
