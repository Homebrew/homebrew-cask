cask 'keyboard-maestro' do
  version '7.0.3'
  sha256 '36cc4b09d344a874c8d7c183b3f078f5c699fe37596dd53f00c433618bc28743'

  # stairways.com is the official download host per the vendor homepage
  url "https://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'
end
