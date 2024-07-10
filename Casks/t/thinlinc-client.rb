cask "thinlinc-client" do
  version "4.17.0_3543"
  sha256 "34283ca262cbc308e5170cc0304f5036f58167fbbcea6d98988202405fcb9838"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.iso"
  name "ThinLinc"
  desc "Linux remote desktop server"
  homepage "https://www.cendio.com/thinlinc/what-is-thinlinc/"

  livecheck do
    url "https://www.cendio.com/thinlinc/download/"
    regex(/tl[._-]v?(\d+(?:[._]\d+)+)[._-]client[._-]macos\.iso/i)
  end

  app "ThinLinc Client.app"

  zap trash: "~/.thinlinc"

  caveats do
    requires_rosetta
  end
end
