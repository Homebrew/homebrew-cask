cask "sigmaos" do
  version "1.0.0.4"
  sha256 "14165c9f11e94ada24b185a438373b4452055896731451b2f726129d0dc9ae79"

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
