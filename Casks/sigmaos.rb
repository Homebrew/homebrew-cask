cask "sigmaos" do
  version "0.15.1.1-b"
  sha256 "3793b4f322ccae26ae4cbe2d740bdfcfaeb241defba09296ce326daa97baf43b"

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
