cask 'keyboard-maestro' do
  version '7.0.2'
  sha256 'd80b9cc8790c9b1595bfe132f47f12f54210fc3430c462d8cd668784c4f1c6c0'

  # stairways.com is the official download host per the vendor homepage
  url "https://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'Keyboard Maestro.app'
end
