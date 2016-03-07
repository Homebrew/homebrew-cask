cask 'macupdate-desktop' do
  version '6.1'
  sha256 '68a5f05a865c04732fd84446f73ad69231a094f9db562485b2de6f0c98fd42be'

  url "http://cdn.macupdate.com/MacUpdateDesktop#{version}.zip"
  appcast 'http://www.macupdate.com/desktop/updates.xml',
          checkpoint: '53c5732b515e636440732d8a150eb071e609869ca1a09fe8a93d74fadd71adec'
  name 'MacUpdate Desktop'
  homepage 'https://www.macupdate.com/desktop'
  license :freemium

  app 'MacUpdate Desktop.app'

  postflight do
    suppress_move_to_applications
  end
end
