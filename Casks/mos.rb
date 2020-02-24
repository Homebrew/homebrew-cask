cask 'mos' do
  version '2.3.0'
  sha256 '4f5dc538ec8cea0774b483cf74751ae6062b7cd13bc6e7876a67bb86439f85ef'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom'
  name 'Mos'
  homepage 'https://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.caldis.Mos.plist'
end
