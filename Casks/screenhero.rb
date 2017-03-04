cask 'screenhero' do
  version '2.3.11.0'
  sha256 '96a11bcb3886688fe01a683eca92606f275972ad498401decbd5a8a203525b51'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: '56640c847128ffba497aafe5f93fc4919ef41248899f5752eb354cdcb46711af'
  name 'Screenhero'
  homepage 'https://screenhero.com/'

  auto_updates true

  app 'Screenhero.app'
end
