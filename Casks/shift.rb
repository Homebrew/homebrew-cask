cask 'shift' do
  version '4.0.13'
  sha256 '7d76bea54c7dba45a5be717906f86bb3dc2deb17043c63a504adf32e48af3025'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
