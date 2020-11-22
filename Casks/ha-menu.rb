cask "ha-menu" do
  version "2.4.1"
  sha256 "db63c175840d94f52eea74537a285853d567a54d337ec22fcbf75472dec370c0"

  # github.com/codechimp-org/ha-menu/ was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast "https://github.com/codechimp-org/ha-menu/releases.atom"
  name "HA Menu"
  homepage "https://hamenu.codechimp.org/"

  app "HA Menu.app"
end
