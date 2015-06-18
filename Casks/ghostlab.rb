cask :v1 => 'ghostlab' do
  version :latest
  sha256 :no_check

  url 'http://awesome.vanamco.com/Ghostlab2/downloads/Ghostlab2.dmg'
  appcast 'http://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml'
  name 'Ghostlab'
  homepage 'http://vanamco.com/ghostlab/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ghostlab2.app'
end
