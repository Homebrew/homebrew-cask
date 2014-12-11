cask :v1 => 'ghostlab' do
  version :latest
  sha256 :no_check

  url 'http://awesome.vanamco.com/downloads/ghostlab/Ghostlab.dmg'
  appcast 'http://awesome.vanamco.com/update/ghostlab-cast.xml'
  homepage 'http://vanamco.com/ghostlab/'
  license :unknown    # todo: improve this machine-generated value

  app 'Ghostlab.app'
end
