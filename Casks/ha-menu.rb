cask "ha-menu" do
  version "2.5.0"
  sha256 "c5c7380fc2162bd283b54ba4e27ab828f8d7d94a14d316ea500819f462f06adc"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  name "HA Menu"
  desc "Menu Bar app to perform common Home Assistant functions"
  homepage "https://github.com/codechimp-org/ha-menu"

  depends_on macos: ">= :high_sierra"

  app "HA Menu.app"
end
