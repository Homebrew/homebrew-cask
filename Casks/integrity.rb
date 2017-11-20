cask 'integrity' do
  version '6.11.5'
  sha256 '5b44cb83a9db1415006c6b9a50ec2214c27d2c5a0f4f0d8cf062f6b61ca85797'

  # peacockmedia.co.uk/integrity was verified as official when first introduced to the cask
  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  appcast 'http://peacockmedia.software/mac/integrity/version_history.html',
          checkpoint: 'fe6aabee56d5d92f6d8f2114fe0130e6f6a28e2d64c545890be70926aaf08eb9'
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
