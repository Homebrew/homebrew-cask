cask :v1 => 'macupdate-desktop' do
  version '6.0.8'
  sha256 '79b41692aa623e922455f2ca93b19b6dae1946ea2e48b052df9310e293a2cb1f'

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
