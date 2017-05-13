cask 'iconjar' do
  version '1.3.2,21596:1492364207'
  sha256 'd9bd76148f7ff6d8be0fc73b054c7945fbef49bd41ed0f777854203f17981417'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: '20d5f6c13de357f051c9ffa1fee05387a471aa298cd68f4acee9b4208da91647'
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
