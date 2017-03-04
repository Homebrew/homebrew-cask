cask 'dialpad' do
  version :latest
  sha256 :no_check

  # storage.googleapis.com/dialpad_native/osx was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/dialpad_native/osx/Dialpad.dmg'
  name 'Dialpad'
  homepage 'https://dialpad.com/download'

  app 'Dialpad.app'
end
