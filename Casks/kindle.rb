cask :v1 => 'kindle' do
  version '40961'
  sha256 '5036fef92ccb2334afd5c3e6c92ae56dccd5d9d120c005264044fa64147ff538'

  url "http://kindleformac.amazon.com/#{version}/KindleForMac.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'
  license :gratis

  app 'Kindle.App'

  zap :delete => [
                  '~/Library/Preferences/com.amazon.Kindle.plist',
                  '~/Library/Application Support/Kindle/',
                  '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
                 ]
end
