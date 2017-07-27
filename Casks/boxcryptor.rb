cask 'boxcryptor' do
  version '2.13.845'
  sha256 '6fed091b4cfe819ef20cba2625ac7143f1094f53b4981a2432548c2a84028e1e'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'c96c7962d552975cdff7f8aa8d29a37fc71b3e0ff2235f892a67d45627bd659a'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
