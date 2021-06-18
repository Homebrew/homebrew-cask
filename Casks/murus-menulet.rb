cask "murus-menulet" do
  version "2.0"
  sha256 "510c7422df80fc13e53e0d5809edc26edde07eb68f3c8fb71833b5112abbb3af"

  url "https://www.murusfirewall.com/downloads/murus_menulet-#{version}.zip"
  name "Murus Firewall"
  homepage "https://www.murusfirewall.com/"

  app "Murus Menulet.app"

  uninstall delete:    "/usr/local/bin/murusd",
            launchctl: "it.murus.murusd",
            quit:      "it.murus.Murus-Menulet"
end
