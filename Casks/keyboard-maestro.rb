cask :v1 => 'keyboard-maestro' do
  version '7.0.1'
  sha256 '5f0f104fc164c53be6ee258db2d5a62e2448493789a80e398593144f9ca0900d'

  # stairways.com is the official download host per the vendor homepage
  url "http://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'http://www.keyboardmaestro.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'Keyboard Maestro.app'
end
