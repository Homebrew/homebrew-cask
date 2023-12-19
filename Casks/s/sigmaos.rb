cask "sigmaos" do
  version "1.14.0.6"
  sha256 "b73f21a27b087b290d246bb9adbb193b9e9f18195b1f7141ee6f0a3bf511f5f8"

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
