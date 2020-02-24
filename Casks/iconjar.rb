cask 'iconjar' do
  version '2.2.0,38416'
  sha256 '16a5888f385ff7cc913ef6d061d4b6487dde8667991d26f70baaa68a7c597fa1'

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
