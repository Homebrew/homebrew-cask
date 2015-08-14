cask :v1 => 'ghostlab' do
  version '2.0.8'
  sha256 '5723c0e3d13d21001c903982d87a7b9867cac7f42fa80e78adb6af3757a679cd'

  url "http://awesome.vanamco.com/Ghostlab2/update/packages/mac/Ghostlab2-#{version}.zip"
  appcast 'http://awesome.vanamco.com/Ghostlab2/update/ghostlab2-cast.xml'
  name 'Ghostlab'
  homepage 'http://vanamco.com/ghostlab/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Ghostlab2.app'
end
