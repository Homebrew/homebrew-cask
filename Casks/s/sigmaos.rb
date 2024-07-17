cask "sigmaos" do
  version "1.17.0.3"
  sha256 "1cf29095b566d6b0626ede2ae0610d82be1fa742efc2e9439092d33c9ba660c2"

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
