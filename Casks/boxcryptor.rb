cask 'boxcryptor' do
  version '2.13.845'
  sha256 '6fed091b4cfe819ef20cba2625ac7143f1094f53b4981a2432548c2a84028e1e'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: 'a0f79b8db35b4b52aa303b22fe3cfe43d83b8cb8a3d6c6b21b03351f80f5a0ca'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
