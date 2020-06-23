cask 'maccy' do
  version '0.13.0'
  sha256 '82024126a7a17f3f5359d8e531e3db67e13707e59e1aa0320372b4eaf3025bf8'

  # github.com/p0deje/Maccy/ was verified as official when first introduced to the cask
  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://maccy.app/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Maccy.app'

  uninstall quit: 'org.p0deje.Maccy'

  zap login_item: 'Maccy',
      trash:      '~/Library/Preferences/org.p0deje.Maccy.plist'
end
