cask "quiet" do
  version "5.1.2"
  sha256 "50553db02525d72fd5451de32bd0ebfd8792465a07e0d9c3de1ca4941f2d987b"

  url "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@#{version}/Quiet-#{version}.dmg",
      verified: "github.com/TryQuiet/quiet/"
  name "Quiet"
  desc "Private, p2p alternative to Slack and Discord built on Tor & IPFS"
  homepage "https://tryquiet.org/"

  livecheck do
    url :homepage
    regex(/href=.*?Quiet[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Quiet.app"

  zap trash: "~/Library/Application Support/Quiet*"

  caveats do
    requires_rosetta
  end
end
