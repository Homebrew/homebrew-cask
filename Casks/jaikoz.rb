cask :v1 => 'jaikoz' do
  version :latest
  sha256 :no_check

  url 'http://jthink.net/jaikoz/jsp/manualdownload/jaikoz-osx.dmg'
  homepage 'http://jthink.net/jaikoz'
  license :unknown    # todo: improve this machine-generated value

  app 'Jaikoz.app'
end
