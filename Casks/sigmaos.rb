cask "sigmaos" do
  version "1.4.0.11"
  sha256 "6227e74e6668db4cee46c50c55df04c72206debc76d1edfe30e6f34e29098f92"

  url "https://releases.sigmaos.com/SigmaOS-#{version}.dmg"
  name "sigmaos"
  desc "Web browser"
  homepage "https://sigmaos.com/"

  livecheck do
    url "https://releases.sigmaos.com/appcast.xml"
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
