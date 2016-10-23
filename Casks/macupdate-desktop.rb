cask 'macupdate-desktop' do
  version '6.1.3'
  sha256 'c1dac184d4b221981247fb173abc8610a00e0c0a57d7928708f8bdf709e46832'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'https://www.macupdate.com/desktop/updates.xml',
          checkpoint: '81693bee3a3b6917465b714432f13730e767b2781eff2cab18a21ba46475187c'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
