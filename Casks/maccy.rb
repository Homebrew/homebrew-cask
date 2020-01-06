cask 'maccy' do
  version '0.8.0'
  sha256 '99b9a473b2e306dedd9ee42f30555888f137e63d256104599e7f626b636736f8'

  # github.com/p0deje/Maccy was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://maccy.app/'

  depends_on macos: '>= :high_sierra'

  app 'Maccy.app'

  uninstall quit: 'org.p0deje.Maccy'

  zap login_item: 'Maccy',
      trash:      '~/Library/Preferences/org.p0deje.Maccy.plist'
end
