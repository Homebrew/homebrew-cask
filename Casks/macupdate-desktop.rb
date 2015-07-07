cask :v1 => 'macupdate-desktop' do
  version '6.0.7'
  sha256 'b30a41ac76bcf705c4e2699171f1556c091699632b62f586353547a62496610e'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          :sha256 => '439c1659219eccee31600600843685c6700a440227eb4692c9dec7762f089a81'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
