cask 'maccy' do
  version '0.6.0'
  sha256 '57e9eb2f49bafe64be412e0f8dd29340ff69e8707e803ddcd480dd26d4670fe1'

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
