cask "thinlinc-client" do
  version "4.19.0_4005"
  sha256 "b0ddaaf86a6e2a8f147d36361e6c29bfba9cd716ee72febb48ae9447a76097fa"

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
