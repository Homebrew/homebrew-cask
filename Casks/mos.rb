cask 'mos' do
  version '2.2.6'
  sha256 '803b3130c722b2cf08e166f347806ab1fd427feef98f07f9edd5439845c3247e'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: '0c31918a80ad04abda612c4222dd5f865abcfd5975de13d45e5b0d0fda7c835d'
  name 'Mos'
  homepage 'https://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.caldis.Mos.plist'
end
