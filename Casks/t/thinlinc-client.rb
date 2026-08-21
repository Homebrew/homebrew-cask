cask "thinlinc-client" do
  version "4.21.0_4588"
  sha256 "e398bce58c233fc6626fc0ace72e467f313d21082734d8839d552a3124427ec6"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.dmg"
  name "ThinLinc"
  desc "Linux remote desktop server"
  homepage "https://www.cendio.com/thinlinc/what-is-thinlinc/"

  livecheck do
    url "https://www.cendio.com/thinlinc/download/"
    regex(/tl[._-]v?(\d+(?:[._]\d+)+)[._-]client[._-]macos\.(?:dmg|iso)/i)
  end

  depends_on :macos

  app "ThinLinc Client.app"

  zap trash: "~/.thinlinc"

  caveats do
    requires_rosetta
  end
end
