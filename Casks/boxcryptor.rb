cask 'boxcryptor' do
  version '2.22.933'
  sha256 '75df9c33d61ac7b02f388f94db784dc1c06799cd8dc0de15fc494b023ac2a936'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'c1306891140fe67ce4af0ac4ae5b09d28548d8697695fe0ae393496e0a0c90e7'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :yosemite'

  app 'Boxcryptor.app'
end
