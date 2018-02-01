cask 'integrity' do
  version '6.11.14'
  sha256 '4dfa17b202b21cc786dd662612bcfe43e59e0f48453e59129290f1a53701f7ab'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: 'c79dee6f7b80432ccbe51e75e6a14b5e4c583ad5c80c865b38b2beac3b2c09f9'
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
