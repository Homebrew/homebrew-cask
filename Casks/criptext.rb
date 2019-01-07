cask 'criptext' do
  version 'latest'
  sha256 'b133b8344c7dd78381958a6d85bf3142eeed3cf64d2ebfc564393174613fb80c'

  url "https://cdn.criptext.com/Criptext-Email-Desktop/mac/Criptext-latest.dmg"
  name 'Criptext'
  homepage 'https://criptext.com/'

  app 'Criptext.app'

  zap trash: [
               '~/Library/Application Support/Criptext',
               '~/Library/Logs/Criptext',
               '~/Library/Saved Application State/com.criptext.criptextmail.savedState',
             ]
end
