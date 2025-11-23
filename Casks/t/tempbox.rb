cask "tempbox" do
  version "1.1"
  sha256 "edcd68709cd69363de8535fc3f14ed9819004aba3edea9def10b540e44383e8b"

  url "https://github.com/devwaseem/TempBox/releases/download/v#{version}/TempBox.dmg",
      verified: "github.com/devwaseem/TempBox/"
  name "Tempbox"
  desc "Disposable email client"
  homepage "https://tempbox.waseem.works/"

  depends_on macos: ">= :big_sur"

  app "TempBox.app"

  zap trash: [
    "~/Library/Application Scripts/com.waseem.TempBox",
    "~/Library/Containers/com.waseem.TempBox",
  ]
end
