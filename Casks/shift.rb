cask 'shift' do
  version '5.0.72'
  sha256 'f02685f3264da799c6fad885a3d6c38cf85537f342779f44d9ee560092c4cc26'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
