cask 'maccy' do
  version '0.9.0'
  sha256 'a0b3fca18679984bf35804e611f9740a5df035345052fe20183bb2e2143c4035'

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
