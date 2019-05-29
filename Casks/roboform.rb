cask 'roboform' do
  version '8.5.9'
  sha256 'b550507a10409748a2a621bb961e11c30742641f93555511f6b40c122a5cddef'

  url "https://www.roboform.com/dist/roboform-mac-v#{version.major}.dmg"
  appcast 'https://www.roboform.com/news-mac'
  name 'RoboForm'
  homepage 'https://www.roboform.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

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
