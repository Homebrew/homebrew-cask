cask 'bbedit' do
  version '11.6.2'
  sha256 '49105c236bd09ec29ebfab45da46a45d3768e8382fa0eb706f65f407bee500b5'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: 'd9edfc0950afd9b90d05323de99632714f93a077997fc7c13dca0cc93898bee1'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
