cask "sigmaos" do
  version "1.11.2.4"
  sha256 "fedb987692b5cdc109664cc45bcf141b5e811217eb3c739ff621753ccb2801a4"

  url "https://releases.sigmaos.com/SigmaOS-#{version}.dmg"
  name "SigmaOS"
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
