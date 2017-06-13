cask 'noun-project' do
  version '2.1'
  sha256 'cefa5ce73b3fdac05fe057de511d744832590b1e865512e07b7fbc592326e919'

  # amazonaws.com/nounproject was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  appcast 'https://thenounproject.com/for-mac/feed/',
          checkpoint: '11f22d9bed485159fc0ca3e52c7f80dc33b39c8e2811ee1ded220f9bf526400e'
  name 'Noun Project'
  homepage 'https://thenounproject.com/'

  depends_on macos: '>= :mavericks'

  app 'Noun Project.app'
end
