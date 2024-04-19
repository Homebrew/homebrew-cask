cask "dcp-o-matic-player" do
  version "2.16.80"
  sha256 "2fe262c8bcaec2527ab8679ed676da146cebbaa19d09b8f1890adf1c196c021f"

  url "https://dcpomatic.com/dl.php?id=osx-10.10-player&version=#{version}"
  name "DCP-o-matic Player"
  desc "Play Digital Cinema Packages"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  app "DCP-o-matic #{version.major} Player.app"

  # No zap stanza required
end
