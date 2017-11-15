cask 'stride' do
  version :latest
  sha256 :no_check

  # stride-desktop-downloads.s3.amazonaws.com/releases/mac was verified as official when first introduced to the cask
  url 'https://stride-desktop-downloads.s3.amazonaws.com/releases/mac/dmg/64/prod/Stride.dmg'
  name 'Stride'
  homepage 'https://www.stride.com/'

  auto_updates true

  app 'Stride.app'

  zap delete: [
                '~/Library/Caches/com.atlassian.stride.desktop.ShipIt/',
                '~/Library/Caches/com.atlassian.stride.desktop/',
                '~/Library/Logs/Stride',
                '~/Library/Saved Application State/com.atlassian.stride.desktop.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Stride',
                '~/Library/Preferences/com.atlassian.stride.desktop.helper.plist',
                '~/Library/Preferences/com.atlassian.stride.desktop.plist',
              ]
end
