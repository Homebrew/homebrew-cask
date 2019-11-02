cask 'shift' do
  version '4.0.2'
  sha256 '84fa20c49de9c8ecd63a68404ef1e824e67067ae5bd6a2c2a5b942576ee66c75'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
