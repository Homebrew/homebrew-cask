cask 'macupdate-desktop' do
  version '6.1.3'
  sha256 'c1dac184d4b221981247fb173abc8610a00e0c0a57d7928708f8bdf709e46832'

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
