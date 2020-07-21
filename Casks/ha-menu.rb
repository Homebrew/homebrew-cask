cask 'ha-menu' do
  version '2.3.1'
  sha256 '8f9efa785b6bb573bce41993552d503f1064cbe43f08e3c7f97cbe5cfb8843ec'

  # github.com/codechimp-org/ha-menu/ was verified as official when first introduced to the cask
  url "https://github.com/codechimp-org/ha-menu/releases/download/#{version}/HA.Menu.zip"
  appcast 'https://github.com/codechimp-org/ha-menu/releases.atom'
  name 'HA Menu'
  homepage 'https://hamenu.codechimp.org/'

  app 'HA Menu.app'
end
