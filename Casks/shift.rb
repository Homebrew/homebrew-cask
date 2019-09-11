cask 'shift' do
  version '3.9.0'
  sha256 '7c8483ee7fe020189472ba98d59ea0e2dc43ca07b703b4d8b7b51f1d80e953ed'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
