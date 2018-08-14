cask 'preferencecleaner' do
  version '1.7.2'
  sha256 '1407b17fd46e784fba7aa45cf5469047ae30e49dc99c749b3315c8bab0bd398d'

  url "https://www.echomist.co.uk/software/downloads/PreferenceCleaner_#{version}.dmg"
  appcast 'https://www.echomist.co.uk/software/PreferenceCleaner.php'
  name 'PreferenceCleaner'
  homepage 'https://www.echomist.co.uk/software/PreferenceCleaner.php'

  app 'PreferenceCleaner.app'
end
