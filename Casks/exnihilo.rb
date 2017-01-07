cask 'exnihilo' do
  version '1.5.2'
  sha256 '3f2d2c1921e8841c0c330db16f267adfa8a67a6aea8f34d9c71e5ae04f7f1c72'

  # github.com/Vayn/ex-nihilo was verified as official when first introduced to the cask
  url "https://github.com/Vayn/ex-nihilo/releases/download/#{version}/ExNihilo.zip"
  appcast 'https://github.com/vayn/ex-nihilo/releases.atom',
          checkpoint: '729063780e90171fa6a079f6ce4eeff7108fa2542b10740100520e0d1823c8a5'
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
