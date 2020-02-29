cask 'ha-menu' do
  version '2.2.0'
  sha256 '4f21987a13f4de87fd8b738027b182ea29b2d02747b5bc610250ce3ae973978a'

  # github.com/codechimp-org/ha-menu was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast 'https://github.com/codechimp-org/ha-menu/releases.atom'
  name 'HA Menu'
  homepage 'https://hamenu.codechimp.org/'

  app 'HA Menu.app'
end
