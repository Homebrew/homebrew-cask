cask 'anvil' do
  version '1.1.8,132'
  sha256 '485fd6cdd21edbbb2c3801fa0f4a5f6a4ef7da65316946ef5599497c676d6b68'

  # sparkler.herokuapp.com/apps/3/versions was verified as official when first introduced to the cask
  url "https://sparkler.herokuapp.com/apps/3/versions/#{version.after_comma}/download"
  appcast 'https://sparkler.herokuapp.com/apps/3/updates.xml'
  name 'Anvil'
  homepage 'https://anvilformac.com/'

  app 'Anvil.app'
end
