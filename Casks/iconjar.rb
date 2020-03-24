cask 'iconjar' do
  version '2.3.0,38894'
  sha256 'fec801ec023b211a5685075bcf8e6209190aee6dd5e8f35e62db16a604f8d815'

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
