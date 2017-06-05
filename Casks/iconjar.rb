cask 'iconjar' do
  version '1.4.0,21992:1496262966'
  sha256 'b7ad0428dfcfb9d80fdd4c4b9bed11eb6a6f6da7b03722e82d7e3594ed9a9cf7'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: '310ccafa85b89c7fb219ec6680fa731573bcbf8fc87507d25eb879df508c9f35'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  auto_updates true

  app 'IconJar.app'

  zap delete: [
                '/Users/Shared/IconJar',
                '~/Library/Application Support/IconJar',
                '~/Library/Preferences/com.iconjar.iconjar.plist',
              ]
end
