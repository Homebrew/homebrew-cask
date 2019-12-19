cask 'shift' do
  version '4.0.9'
  sha256 '54cd7b140bc1b3a4522c380a1f177c3c2091019f5ca90ef65be8d483561b6d07'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
