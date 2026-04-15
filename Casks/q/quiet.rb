cask "quiet" do
  version "7.0.1"
  sha256 "413eadd8548a3714b673e3dba8694fc46bd3a4c57e0ae3548bfedc7206769c07"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}.dmg",
      verified: "github.com/TryQuiet/quiet/"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Quiet[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet*"

  caveats do
    requires_rosetta
  end
end
