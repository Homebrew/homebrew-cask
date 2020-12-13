cask "angry-ip-scanner" do
  version "3.7.3"
  sha256 "b411cbafc30aeeb59c69803b5f962f87a653fdf4a4a6f4292ecb6280978c0cc2"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  appcast "https://github.com/angryip/ipscan/releases.atom"
  name "Angry IP Scanner"
  desc "Open-source, cross-platform network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"
end
