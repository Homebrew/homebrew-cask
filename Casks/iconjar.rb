cask 'iconjar' do
  version '2.4.1,39241'
  sha256 'ed2cd8c3369c5990901c51ca60fc5fb9b48582f959de5e6a9ad94a5964fde088'

  url "https://geticonjar.com/releases/IconJar.app.#{version.after_comma}.zip"
  appcast 'https://geticonjar.com/releases/stable.xml'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'IconJar.app'

  zap trash: [
               '/Users/Shared/IconJar',
               '~/Library/Application Support/IconJar',
               '~/Library/Preferences/com.iconjar.iconjar.plist',
             ]
end
