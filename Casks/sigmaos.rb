cask "sigmaos" do
  version "0.13.2.2-b"
  sha256 "aa827a7172d53b9eccac7d31b51689b71731c4d3d36e39025c9bb0487e1244ba"

  url "https://releases.sigmaos.com/macos/SigmaOS-#{version}.dmg"
  name "sigmaos"
  desc "Web browser"
  homepage "https://sigmaos.com/"

  livecheck do
    url "https://releases.sigmaos.com/macos/appcast.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SigmaOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.sigmaos.sigmaos.macos",
    "~/Library/Containers/com.sigmaos.sigmaos.macos",
  ]
end
