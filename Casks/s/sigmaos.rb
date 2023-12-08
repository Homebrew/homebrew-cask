cask "sigmaos" do
  version "1.14.0.4"
  sha256 "3e88e556aa9f703d75b40390a33a9dd13903f23ba45be568c1281940a8503a6c"

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
