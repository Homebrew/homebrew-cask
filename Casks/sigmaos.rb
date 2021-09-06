cask "sigmaos" do
  version "0.9.3.5-b"
  sha256 "a9fc6bbc35c5f7e99d3792acb1cbbe0eaeb6d2de1894cfe637a0ab6a4b3f3beb"

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
