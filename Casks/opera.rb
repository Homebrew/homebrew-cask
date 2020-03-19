cask 'opera' do
  version '67.0.3575.79'
  sha256 'd871cfa4c4618daf8c94f2eec6db4c04749b4b3a5ec419636a4c215b9f9550d6'

  url "https://get.geo.opera.com/pub/opera/desktop/#{version}/mac/Opera_#{version}_Setup.dmg"
  appcast 'https://ftp.opera.com/pub/opera/desktop/'
  name 'Opera'
  homepage 'https://www.opera.com/'

  auto_updates true

  app 'Opera.app'

  zap trash: [
               '~/Library/Preferences/com.operasoftware.Opera.plist',
               '~/Library/Application Support/com.operasoftware.Opera/',
             ]
end
