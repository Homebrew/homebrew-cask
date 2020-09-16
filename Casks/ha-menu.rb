cask "ha-menu" do
  version "2.4.0"
  sha256 "30f2d593998a36e1a70a065c1b4f2a61186cc905b21fc6fd6d94edf0631e8212"

  # github.com/codechimp-org/ha-menu/ was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast "https://github.com/codechimp-org/ha-menu/releases.atom"
  name "HA Menu"
  homepage "https://hamenu.codechimp.org/"

  app "HA Menu.app"
end
