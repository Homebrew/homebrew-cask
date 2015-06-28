cask :v1 => 'macupdate-desktop' do
  version '6.0.6'
  sha256 '3f9a7fbbf19458912609723a181c608b6f335645d94c94bb8e635d928bd650a2'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          :sha256 => 'f34602a28e842a77a7159342463747c05d783d44613feed26bbf742d88e3607f'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
