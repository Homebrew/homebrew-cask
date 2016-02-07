cask 'screenhero' do
  version '2.3.5.0'
  sha256 '2d87dfa787abf96e1a398e9bf7fb3034cd95d583cb28d82b41a2a95c668474a4'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: '317b6317e3fd44380b3ddb989cf561c043af0c23168ec033d60607c20601b2aa'
  name 'Screenhero'
  homepage 'https://screenhero.com/'
  license :commercial

  app 'Screenhero.app'
end
