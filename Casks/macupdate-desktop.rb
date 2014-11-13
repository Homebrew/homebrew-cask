cask :v1 => 'macupdate-desktop' do
  version '6.0.2'
  sha256 '1aa04e0bec920f28af5417a2b875e40af832d5303a29dca27e527e30c4db42f5'

  url "http://dl.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          :sha256 => 'f34602a28e842a77a7159342463747c05d783d44613feed26bbf742d88e3607f'
  homepage 'https://www.macupdate.com/desktop'
  license :unknown

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
