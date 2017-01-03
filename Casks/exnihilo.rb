cask 'exnihilo' do
  version '1.5.1'
  sha256 'ec3a04fcc1792e8f3a7ae8664caa93ad0cfa04b286c5fee05d2a1f622b71dd94'

  # github.com/Vayn/ex-nihilo was verified as official when first introduced to the cask
  url "https://github.com/Vayn/ex-nihilo/releases/download/#{version}/ExNihilo.zip"
  appcast 'https://github.com/vayn/ex-nihilo/releases.atom',
          checkpoint: '91a12170ea0986d15d2fb3241a9d9421adbae279f5c13fca04c4ed0b013eeddb'
  name 'Ex nihilo'
  homepage 'https://vayn.github.io/ex-nihilo/'

  auto_updates true

  app 'ExNihilo.app'

  uninstall login_item: 'ExNihilo'

  zap delete: [
                '~/Library/Caches/com.soloinc.ExNihilo',
                '~/Library/Preferences/com.soloinc.ExNihilo.plist',
                '~/Library/Cookies/com.soloinc.ExNihilo.binarycookies',
              ]
end
