cask 'flashlight' do
  version '1.0.4'
  sha256 '2040a268be730cc5cff603341d13b58a671132c74bee8dc8cc5662ea95466822'

  # githubusercontent.com/w0lfschild/app_updates/master/Flashlight was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/Flashlight_#{version}.zip"
  appcast 'https://raw.githubusercontent.com/w0lfschild/app_updates/master/Flashlight/appcast.xml',
          checkpoint: 'd81c3766258fcb1f424cb93ae3ceb5938d157aa3c4b90bf88ab9304c92aaf794'
  name 'Flashlight'
  homepage 'https://github.com/w0lfschild/Flashlight'

  auto_updates true
  depends_on macos: '>= :yosemite'
  depends_on cask: 'mysimbl'

  app 'Flashlight.app'
end
