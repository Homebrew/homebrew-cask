cask "angry-ip-scanner" do
  version "3.7.2"
  sha256 "229e1c2dcb1fcccacd2816c7a0e1ad43733f7a09cf76df4ecd53ccdafee8bdda"

  # github.com/angryip/ipscan/ was verified as official when first introduced to the cask
  url "https://github.com/angryip/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast "https://github.com/angryip/ipscan/releases.atom"
  name "Angry IP Scanner"
  desc "Open-source, cross-platform network scanner"
  homepage "https://angryip.org/"

  app "Angry IP Scanner.app"
end
