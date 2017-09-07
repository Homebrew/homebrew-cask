cask 'boxcryptor' do
  version '2.14.867'
  sha256 'e10760dc55aeb9ca987fe6bd4f716de71d987195b3907a6ef3f76d01945a17b5'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'c96c7962d552975cdff7f8aa8d29a37fc71b3e0ff2235f892a67d45627bd659a'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
