cask "thinlinc-client" do
  version "4.15.0_3258"
  sha256 "7beaefcfd874c99bc8677d68f694336c0e0fe067e451c4afc957e11f7c576276"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.iso"
  name "ThinLinc"
  desc "Linux remote desktop server"
  homepage "https://www.cendio.com/thinlinc"

  livecheck do
    url "https://www.cendio.com/thinlinc/download"
    regex(/tl[._-]v?(\d+(?:[._]\d+)+)[._-]client[._-]macos\.iso/i)
  end

  app "ThinLinc Client.app"

  zap trash: "~/.thinlinc"
end
