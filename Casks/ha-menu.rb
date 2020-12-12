cask "ha-menu" do
  version "2.4.1"
  sha256 "db63c175840d94f52eea74537a285853d567a54d337ec22fcbf75472dec370c0"

  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip",
      verified: "github.com/codechimp-org/ha-menu/"
  appcast "https://github.com/codechimp-org/ha-menu/releases.atom"
  name "HA Menu"
  homepage "https://hamenu.codechimp.org/"

  app "HA Menu.app"
end
