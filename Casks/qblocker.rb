cask 'qblocker' do
  version '18,1464250428'
  sha256 '2cccdc9ab01981982d26a19d5d91d3f5f941c8f1014290d582ba23856a08def3'

  # devmate.com/uk.co.wearecocoon.QBlocker was verified as official when first introduced to the cask
  url "https://dl.devmate.com/uk.co.wearecocoon.QBlocker/#{version.before_comma}/#{version.after_comma}/QBlocker-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/uk.co.wearecocoon.QBlocker.xml',
          checkpoint: '45fcc52df3d3a6c3ff05902820872a8eb9e47328cbbd31f90d5a5893fca2f873'
  name 'QBlocker'
  homepage 'http://qblocker.com/'
  license :oss

  accessibility_access true

  app 'QBlocker.app'

  zap delete: [
                '~/Library/Application Support/uk.co.wearecocoon.QBlocker',
                '~/Library/Caches/uk.co.wearecocoon.QBlocker',
                '~/Library/Logs/uk.co.wearecocoon.QBlocker',
                '~/Library/Preferences/uk.co.wearecocoon.QBlocker.plist',
              ]
end
