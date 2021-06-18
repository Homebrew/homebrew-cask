cask "freeze" do
  version "3.14,305"
  sha256 :no_check

  url "https://www.freezeapp.net/download/Freeze.zip"
  name "Freeze"
  desc "Amazon Glacier file transfer client"
  homepage "https://www.freezeapp.net/"

  livecheck do
    url "https://www.freezeapp.net/appcast.xml"
    strategy :sparkle
  end

  app "Freeze.app"

  zap trash: [
    "~/Library/Application Scripts/seb.GlacierMac",
    "~/Library/Containers/seb.GlacierMac",
  ]
end
