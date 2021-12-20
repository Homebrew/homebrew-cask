cask "sigmaos" do
  version "0.14.0.1-b"
  sha256 "7f3b746d06e817a2d118ab42aa57857ff9edcfa40bb4d3ae3fb5764c272920e4"

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
