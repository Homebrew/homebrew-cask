cask 'keyboard-maestro' do
  version '7.1'
  sha256 'ef3f422e594f6cffa09284d6672c2c0cf6067eeff8f38f7be9c2922fc4c5a7e7'

  # stairways.com is the official download host per the vendor homepage
  url "https://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'
end
