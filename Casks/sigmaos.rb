cask "sigmaos" do
  version "0.15.2.1-b"
  sha256 "897d87df22cbac5f27b99a1542f011f1ae8dc6445eb5a5e7716231fd5f3bc2f5"

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
