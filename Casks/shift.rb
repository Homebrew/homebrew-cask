cask 'shift' do
  version '3.9.0'
  sha256 '7c8483ee7fe020189472ba98d59ea0e2dc43ca07b703b4d8b7b51f1d80e953ed'

  # https://update.trysift.com was verified as official when first introduced to the cask
  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  name 'shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
