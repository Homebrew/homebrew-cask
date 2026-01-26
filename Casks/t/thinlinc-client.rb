cask "thinlinc-client" do
  version "4.20.0_4284"
  sha256 "5a762511077829a004e0acb45bd5b7e6b4ae2dfe12cb62ec04425937d173f230"

  url "https://www.cendio.com/downloads/clients/tl-#{version}-client-macos.dmg"
  name "ThinLinc"
  desc "Linux remote desktop server"
  homepage "https://www.cendio.com/thinlinc/what-is-thinlinc/"

  livecheck do
    url "https://www.cendio.com/thinlinc/download/"
    regex(/tl[._-]v?(\d+(?:[._]\d+)+)[._-]client[._-]macos\.(?:dmg|iso)/i)
  end

  app "ThinLinc Client.app"

  zap trash: "~/.thinlinc"

  caveats do
    requires_rosetta
  end
end
