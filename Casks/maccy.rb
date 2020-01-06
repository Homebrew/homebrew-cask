cask 'maccy' do
  version '0.8.2'
  sha256 'dc34e3967973b32ec3a84c3dd721b50023602aa54a2020b0e1958db4702fa567'

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
