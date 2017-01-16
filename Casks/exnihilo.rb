cask 'exnihilo' do
  version '1.6.0'
  sha256 '0a2aff5d9d57a83c087bf983f0a2114b66f7863fe562ca60cd2e9c5f5df898e6'

  # github.com/Vayn/ex-nihilo was verified as official when first introduced to the cask
  url "https://github.com/Vayn/ex-nihilo/releases/download/#{version}/ExNihilo.zip"
  appcast 'https://github.com/vayn/ex-nihilo/releases.atom',
          checkpoint: '0581e9bbf9d7aab85e475b906f2b7429b6ccbd097745d16461a71ae12bb37fe4'
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
