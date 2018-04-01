cask 'bitbar' do
  version '1.9.2'
  sha256 '9e317d58143f544ab3b2b35e4d0ef2f11b9578fe6872cec1415da961acb1aee4'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '8934f1db55d0b38e5ae09f6dcdc477b7d76f2cfb453472c2d0131592fab326aa'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'

  app 'BitBar.app'

  zap trash: [
               '~/Library/BitBar Plugins',
               '~/Library/Caches/com.matryer.BitBar',
               '~/Library/Preferences/com.matryer.BitBar.plist',
             ]
end
