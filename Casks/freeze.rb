cask "freeze" do
  version "3.13"
  sha256 "fd58b7f6e876aa18e0948b3172791de9dad42949820b516a774b298215cadf27"

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
