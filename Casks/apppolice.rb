cask 'apppolice' do
  version :latest
  sha256 :no_check

  url 'http://definemac.com/download/AppPolice.dmg'
  name 'AppPolice'
  homepage 'http://definemac.com'

  app 'AppPolice.app'
end
