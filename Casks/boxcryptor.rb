cask 'boxcryptor' do
  version '2.15.875'
  sha256 '51fd06157dfb630257cbfdff167fccfe310f4d9f8864f1bb4d869c3c4421efdc'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'c96c7962d552975cdff7f8aa8d29a37fc71b3e0ff2235f892a67d45627bd659a'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
