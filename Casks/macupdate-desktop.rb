cask 'macupdate-desktop' do
  version '6.1.2'
  sha256 'fe594bc2308e4bdcd3bcbc48d3a2c4a6e130c5180210d2914e46157517c109d6'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '268853a0860e236c4c98fc55da41d24cad893011359416392af4f87dee19cbdc'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :freemium

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
