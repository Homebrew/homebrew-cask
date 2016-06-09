cask 'macupdate-desktop' do
  version '6.1.3'
  sha256 '8a30d0f5e96c78622fb348089d3c62fa22e50f56bf8d5c7b0a3bc38317c303e6'

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
