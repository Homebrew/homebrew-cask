cask 'roboform' do
  version '8.8.0'
  sha256 '88490e692857433169a9b702e44961b592e533876943d4495846f680a899c1df'

  url "https://www.roboform.com/dist/roboform-mac-v#{version.major}.dmg"
  appcast 'https://www.roboform.com/news-mac'
  name 'RoboForm'
  homepage 'https://www.roboform.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'RoboForm.app'

  zap trash: [
               '~/Library/Application Scripts/com.SiberSystems.RoboForm.safari-companion*',
               '~/Library/Application Support/RoboForm',
               '~/Library/Application Support/com.SiberSystems.RoboForm',
               '~/Library/Application Support/com.SiberSystems.RoboForm.RoboFormService',
               '~/Library/Caches/com.SiberSystems.RoboForm',
               '~/Library/Caches/com.SiberSystems.RoboForm.RoboFormService',
               '~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm',
               '~/Library/Caches/com.crashlytics.data/com.SiberSystems.RoboForm.RoboFormService',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.SiberSystems.RoboForm.RoboFormService',
               '~/Library/Containers/com.SiberSystems.RoboForm.safari-companion*',
               '~/Library/Group Containers/*.com.SiberSystems.RoboForm',
               '~/Library/Saved Application State/com.SiberSystems.RoboForm.savedState',
             ]
end
