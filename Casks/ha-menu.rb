cask "ha-menu" do
  version "2.6.2"
  sha256 "6c5cd8128afb496f9406541ecfaf0164e7d0bdba9dbc2e7de920ec37fcfb1d39"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  name "HA Menu"
  desc "Menu Bar app to perform common Home Assistant functions"
  homepage "https://github.com/codechimp-org/ha-menu"

  depends_on macos: ">= :high_sierra"

  app "HA Menu.app"
end
