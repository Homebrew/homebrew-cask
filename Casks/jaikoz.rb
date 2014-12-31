cask :v1 => 'jaikoz' do
  version :latest
  sha256 :no_check

  url 'http://jthink.net/jaikoz/jsp/manualdownload/jaikoz-osx.dmg'
  homepage 'http://jthink.net/jaikoz'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Jaikoz.app'
end
