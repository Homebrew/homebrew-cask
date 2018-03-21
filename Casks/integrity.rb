cask 'integrity' do
  version '8.0.4'
  sha256 '427b42be1887a1dbc7f416597f0231dd2ca03fc5ad0ed6b49341c85dbb76c379'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '1114be583e6c3df7da31a522afa1b751bbcb75858d91a5bd9c389a5ec33a8b92'
  name 'Integrity'
  homepage 'http://peacockmedia.software/mac/integrity/'

  app 'Integrity.app'

  zap trash: [
               '~/Library/Application Support/Integrity',
               '~/Library/Caches/com.peacockmedia.integrity',
               '~/Library/Cookies/com.peacockmedia.integrity.binarycookies',
               '~/Library/Preferences/com.peacockmedia.integrity.plist',
             ]
end
