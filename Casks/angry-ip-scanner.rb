cask "angry-ip-scanner" do
  version "3.7.4"
  sha256 "cd8c433651e8c1f9442c29ef575704a9a81168dd38e56ba882c02d1aa372c545"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  appcast "https://github.com/angryip/ipscan/releases.atom"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"
end
