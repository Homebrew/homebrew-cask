cask 'boxcryptor' do
  version '2.8.800'
  sha256 '1c2b1ec2899e2ef6390cbce8322d3623b3f08dc3c1f8ea86e4d167527a5e9a9d'

  # d3k3ih5otj72mn.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3k3ih5otj72mn.cloudfront.net/boxcryptor/mac/Boxcryptor_v#{version}_Installer.dmg"
  appcast 'https://rink.hockeyapp.net/api/2/apps/7fd6db3e51a977132e3b120c613eaea8',
          checkpoint: '96de80d6dc8c7dfbe069a33e4dda791feaf7158fa2b681c3fc42e83459367720'
  name 'Boxcryptor'
  homepage 'https://www.boxcryptor.com/en/'

  depends_on macos: '>= :mavericks'

  app 'Boxcryptor.app'
end
