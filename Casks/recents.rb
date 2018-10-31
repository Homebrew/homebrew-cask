cask 'recents' do
if MacOS.version <= :sierra
  version '1.9.6,1544'
  sha256 '85abaa9daddc1d6ed8c487f9ba8d4d995a0ef49320ffb016c329076f30c5b933'
  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/2799?format=zip'
else
  version '2.0.1,4624'
  sha256 'f1994d1b047079b55dd4a076d4fb08c047eeae1363de32b67ef66ce3e2d8f369'
  # rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b was verified as official when first introduced to the cask
  url "https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b/app_versions/#{version.after_comma}?format=zip"
end 

  appcast 'https://rink.hockeyapp.net/api/2/apps/74f5ee9ebf2d4be3b92a3e8766433b8b'
  name 'Recents'
  homepage 'http://recentsapp.com/'

  app 'Recents.app'
end
