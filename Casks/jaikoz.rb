cask 'jaikoz' do
  version :latest
  sha256 :no_check

  url 'http://jthink.net/jaikoz/jsp/manualdownload/jaikoz-osx.dmg'
  name 'Jaikoz'
  homepage 'http://jthink.net/jaikoz'
  license :commercial

  app 'Jaikoz.app'
end
