cask 'exnihilo' do
  version '1.7.1'
  sha256 '8904866302c9288a5b1c9c13ed50732a4b373938ba13c60357149746cb433ece'

  # github.com/Vayn/ex-nihilo was verified as official when first introduced to the cask
  url "https://github.com/Vayn/ex-nihilo/releases/download/#{version}/ExNihilo.zip"
  appcast 'https://github.com/vayn/ex-nihilo/releases.atom',
          checkpoint: '8a246203e39741a7b84e86988b74506679610b229b5e84c911d813e2c87db040'
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
