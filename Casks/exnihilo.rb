cask 'exnihilo' do
  version '1.7.4'
  sha256 'a926c50ceb23b7e9b4b46ac96aaf4b028b95254c768a318c74450d8c4c0e70df'

  # github.com/Vayn/ex-nihilo was verified as official when first introduced to the cask
  url "https://github.com/Vayn/ex-nihilo/releases/download/#{version}/ExNihilo.zip"
  appcast 'https://github.com/vayn/ex-nihilo/releases.atom',
          checkpoint: 'f4bf79ba08c1a6fa069c0ddc4ad09b73fd72e82d614d0b3524be5601be2b4eac'
  name 'Ex nihilo'
  homepage 'https://vayn.github.io/ex-nihilo/'

  auto_updates true

  app 'ExNihilo.app'

  uninstall login_item: 'ExNihilo'

  zap trash: [
               '~/Library/Caches/com.soloinc.ExNihilo',
               '~/Library/Preferences/com.soloinc.ExNihilo.plist',
               '~/Library/Cookies/com.soloinc.ExNihilo.binarycookies',
             ]
end
