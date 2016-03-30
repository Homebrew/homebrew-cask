cask 'macupdate-desktop' do
  version '6.1'
  sha256 '0f93e249074b7e49e6a7aacc4e69bc8c2a9a7e41e0004277299c74bd89f75bf9'

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
