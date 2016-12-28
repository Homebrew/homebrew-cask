cask 'flashlight' do
  version '1.0.4'
  sha256 '2040a268be730cc5cff603341d13b58a671132c74bee8dc8cc5662ea95466822'

  # githubusercontent.com/w0lfschild/app_updates/master/Flashlight was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/Flashlight_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/appcast.xml',
          checkpoint: '9f610164e2661128457a0386d2e8ac66d28f041aa6dab449a0c998a2d8495309'
  name 'Flashlight'
  homepage 'https://github.com/w0lfschild/Flashlight'

  auto_updates true
  depends_on macos: '>= :yosemite'
  depends_on cask: 'mysimbl'

  app 'Flashlight.app'
end
