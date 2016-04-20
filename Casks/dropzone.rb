cask 'dropzone' do
  version '3.5.5'
  sha256 'dd100f1dede037c47be6a65008f4bc73c81c410d80cbee0fc0337110c0573337'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '80ab2fa7045fc8e0008345f35dee97523e2c607c363231217346c4d58803ab51'
  name 'Dropzone'
  homepage 'https://aptonic.com'
  license :commercial

  app "Dropzone #{version.major}.app"
end
