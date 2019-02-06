cask 'roboform' do
  version '8.5.7'
  sha256 '58ec561307297b691b3a81dc1ad8251773275e52c81e8d120ea360d69b79435e'

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
