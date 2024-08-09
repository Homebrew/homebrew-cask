cask "sigmaos" do
  version "1.17.0.6"
  sha256 "e35caa4b7ef664db22ca602113b05704032e2aa04a5cab88f142ad26c4d3e6cb"

  url "https://releases.sigmaos.com/SigmaOS-#{version}.dmg"
  name "SigmaOS"
  desc "Web browser"
  homepage "https://sigmaos.com/"

  livecheck do
    url "https://releases.sigmaos.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "SigmaOS.app"

  zap trash: [
    "~/Library/Application Scripts/com.sigmaos.sigmaos.macos",
    "~/Library/Containers/com.sigmaos.sigmaos.macos",
  ]
end
