cask 'shift' do
  version '4.0.5'
  sha256 'e63a810bd693c30c10bfd738d475c0cf9d687fa4312f5b607b3896c53a670c57'

  url "https://update.tryshift.com/download/version/#{version}/osx_64"
  appcast 'https://tryshift.com/download/?platform=mac'
  name 'Shift'
  homepage 'https://tryshift.com/'

  app 'Shift.app'
end
