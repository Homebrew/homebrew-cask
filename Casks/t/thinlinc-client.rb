cask "thinlinc-client" do
  version "4.18.0_3768"
  sha256 "3a8ca607e386a9b0f8a6e15b183f96a1d3abeac607b8d12510206d135d9201a3"

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
