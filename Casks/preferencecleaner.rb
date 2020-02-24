cask 'preferencecleaner' do
  version '1.8'
  sha256 '7bf3413b3ba005f18bd73ed16320cbf01404202a48b728895fb3ed59eb90b54f'

  url "https://www.echomist.co.uk/software/downloads/PreferenceCleaner_#{version}.dmg"
  appcast 'https://www.echomist.co.uk/software/PreferenceCleaner.php'
  name 'PreferenceCleaner'
  homepage 'https://www.echomist.co.uk/software/PreferenceCleaner.php'

  app 'PreferenceCleaner.app'
end
