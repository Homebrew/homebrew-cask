cask "thinlinc-client" do
  version "4.16.0_3389"
  sha256 "7537495138dd63499067d70f5965a134a6887c1817f47fc768a7bea25a6244b8"

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
end
