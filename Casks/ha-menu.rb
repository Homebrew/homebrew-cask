cask 'ha-menu' do
  version '2.2.1'
  sha256 'f82a100f4c1a69984ddcc3f86e033b1c12fb5ba4defe94a8ae26b5be0f5e8a4b'

  # github.com/codechimp-org/ha-menu/ was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast 'https://github.com/codechimp-org/ha-menu/releases.atom'
  name 'HA Menu'
  homepage 'https://hamenu.codechimp.org/'

  app 'HA Menu.app'
end
