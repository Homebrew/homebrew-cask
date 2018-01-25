cask 'integrity' do
  version '6.11.13'
  sha256 '3e229161e72d07a9e0cf5c4df5119fd66e8e1005986a5f8a463c51eed2e24392'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: '7fb7d05ef6ccad88c96509927586bebc69cd39e6a69dfb184f966164742be342'
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
