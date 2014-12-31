cask :v1 => 'ifunbox' do
  version :latest
  sha256 :no_check

  url 'http://dl.i-funbox.com/mac/ifunboxmac.dmg'
  appcast 'http://dl.i-funbox.com/updates/ifunbox.mac/update.xml'
  homepage 'http://www.i-funbox.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iFunBox.app'
end
