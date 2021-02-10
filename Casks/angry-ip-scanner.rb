cask "angry-ip-scanner" do
  version "3.7.5"
  sha256 "a7c7396da9d14ba531ea5c09d8920ad52eb2300b2d48ed368413cb77c5035ce4"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  appcast "https://github.com/angryip/ipscan/releases.atom"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"
end
