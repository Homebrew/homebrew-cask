cask "angry-ip-scanner" do
  version "3.7.6"
  sha256 "16cee34ed7af7175f622197c764fd0c69399bc6dc8b7d891ac76266d077c5415"

  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip",
      verified: "github.com/angryip/ipscan/"
  appcast "https://github.com/angryip/ipscan/releases.atom"
  name "Angry IP Scanner"
  desc "Network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"
end
