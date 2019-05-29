cask 'bonjeff' do
  version '1.0.7'
  sha256 '74ce75d3d4119ded7e78850f168cd2921126de5164aa1fd5c9bc6964c959155c'

  url "https://github.com/lapcat/Bonjeff/releases/download/v#{version}/Bonjeff.#{version}.zip"
  appcast 'https://github.com/lapcat/Bonjeff/releases.atom'
  name 'Bonjeff'
  homepage 'https://github.com/lapcat/Bonjeff'

  depends_on macos: '>= :sierra'

  app 'Bonjeff.app'

  zap trash: [
               '~/Library/Application Scripts/com.lapcatsoftware.bonjeff',
               '~/Library/Containers/com.lapcatsoftware.bonjeff',
             ]
end
