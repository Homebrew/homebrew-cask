cask 'sunsama' do
  version '0.9.6'
  sha256 'c9e5c55dbd14aa533fdfe770f469de2bf448fc726d92826120b67446cdbac3e7'

  url "http://download.sunsama.com/desktop/Sunsama-#{version}.dmg"
  appcast 'https://app.sunsama.com/b56d1fbd218098348674bde87159e7c18804471c.js'
  name 'Sunsama'
  homepage 'https://app.sunsama.com/desktop'

  app 'Sunsama.app'
end
