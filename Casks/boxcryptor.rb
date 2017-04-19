cask 'boxcryptor' do
  version '2.10.820'
  sha256 '4e4d2ad6c5d00011edcee1cbed149eedd5546dd273d3f3f03ce6ab4ebb70a914'

  url "https://downloads.boxcryptor.com/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '96de80d6dc8c7dfbe069a33e4dda791feaf7158fa2b681c3fc42e83459367720'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
