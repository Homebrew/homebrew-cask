cask 'shift' do
  version '4.0.21'
  sha256 'f4c0f56acd9c0a9e1d07bf3ef7817424e67b889e3f15d9019b4c5b58e7b2fbb7'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
