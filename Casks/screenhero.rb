cask 'screenhero' do
  version '2.3.12.0'
  sha256 '01dc148d96196fc2ea2fda82943776615575bf809567d2519c3ebd8a0005cdef'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: 'ee0c51ee0009d5d13e820818a06ad913984f2bdbd54a6c218ad0a18799e29dfa'
  name 'Screenhero'
  homepage 'https://screenhero.com/'

  auto_updates true

  app 'Screenhero.app'
end
