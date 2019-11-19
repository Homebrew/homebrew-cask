cask 'iconjar' do
  version '2.1.1,37078'
  sha256 '8cd6eec040ef970568416650b95ffa0fbb40a7d477d19d534d865d1ec4b2685e'

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
