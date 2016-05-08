cask 'keyboard-maestro' do
  version '7.1.1'
  sha256 '332525f85f6cb4e487edd6edf16b87855d2907d367bd806efda2e3bc0326422e'

  # stairways.com is the official download host per the vendor homepage
  url "https://files.stairways.com/keyboardmaestro-#{version.delete('.')}.zip"
  name 'Keyboard Maestro'
  homepage 'https://www.keyboardmaestro.com/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Keyboard Maestro.app'
end
