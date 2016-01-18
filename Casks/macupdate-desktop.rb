cask 'macupdate-desktop' do
  version '6.0.9'
  sha256 '82f8b1bc8d9ed5d3881a8ca618df146fbb82634ecca4e5aac8f96ad65389e7c4'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          checkpoint: '2d1167e6e25b5c477fe0e20c1bcdb18b9eed13f989aa025a0aa5611f3fe7c678'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :freemium

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
