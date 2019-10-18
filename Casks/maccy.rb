cask 'maccy' do
  version '0.5.1'
  sha256 'ad71007a32378ee9b07caed6b67e9ae9c7bc53b9bdfaba59b30f139cbb1dd994'

  # github.com/p0deje/Maccy was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://maccy.app/'

  depends_on macos: '>= :mojave'

  app 'Maccy.app'

  uninstall quit: 'org.p0deje.Maccy'

  zap login_item: 'Maccy',
      trash:      '~/Library/Preferences/org.p0deje.Maccy.plist'
end
