cask 'iconjar' do
  version '1.9.1,27710:1522175139'
  sha256 '34792f023955d9e6ddf7e4060b92b09d5820ebce09bfc7404a2512358105750b'

  # dl.devmate.com/com.iconjar.iconjar was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.iconjar.iconjar/#{version.after_comma.before_colon}/#{version.after_colon}/Iconjar-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/com.iconjar.iconjar.xml',
          checkpoint: '77df8b9ec8f8b6ba40849d37fc8b4dcf6a5572166224a2e97bb9f806624f8b78'
  name 'IconJar'
  homepage 'https://geticonjar.com/'

  auto_updates true

  app 'IconJar.app'

  zap trash: [
               '/Users/Shared/IconJar',
               '~/Library/Application Support/IconJar',
               '~/Library/Preferences/com.iconjar.iconjar.plist',
             ]
end
