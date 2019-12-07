cask 'iconjar' do
  version '2.1.2,37199'
  sha256 'd3d3249de1caba1283e8ecf042d2abd40c5fd1f713a94ce0e43ee45987cbb9b2'

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
