cask 'screenhero' do
  version '2.3.10.0'
  sha256 'ebe1d9922acb5703748c9cebab6e33b7af220e9a69d9bf38d294ce1794697518'

  url "https://secure.screenhero.com/update/screenhero/Screenhero-#{version}.dmg"
  appcast 'https://d3hb26arjl8wb7.cloudfront.net/jsherwani/public/update/mac/screenhero/sparkle.xml',
          checkpoint: 'e9a3866e22348b5db011dcb375474359e09db7e34cb9c138f389050ab4e68d12'
  name 'Screenhero'
  homepage 'https://screenhero.com/'

  app 'Screenhero.app'
end
