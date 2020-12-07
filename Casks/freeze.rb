cask "freeze" do
  version "3.13,303"
  sha256 :no_check

  url "https://www.freezeapp.net/download/Freeze.zip"
  appcast "https://www.freezeapp.net/appcast.xml"
  name "Freeze"
  desc "Amazon Glacier file transfer client"
  homepage "https://www.freezeapp.net/"

  app "Freeze.app"

  zap trash: [
    "~/Library/Application Scripts/seb.GlacierMac",
    "~/Library/Containers/seb.GlacierMac",
  ]
end
