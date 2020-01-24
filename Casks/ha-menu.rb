cask 'ha-menu' do
  version '2.1.1'
  sha256 'd5370514cfef3687760acfe32569fe8b02815a81a4aa722e7a3a2c0c844d5ef1'

  # github.com/codechimp-org/ha-menu was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast 'https://github.com/codechimp-org/ha-menu/releases.atom'
  name 'HA Menu'
  homepage 'https://hamenu.codechimp.org/'

  app 'HA Menu.app'
end
