cask 'roboform' do
  version '8.6.5'
  sha256 '67b07ea5b63d335ed043cb9cf6739f50ce3f587b660e3b5efdb089b6517f40bc'

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
