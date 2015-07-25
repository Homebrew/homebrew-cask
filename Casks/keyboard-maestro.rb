cask :v1 => 'keyboard-maestro' do
  version '7.0'
  sha256 '39caa5e5b5dac584da141cd5eb2b428b7c5ee562a5f858370c6338b538a9c8ad'

  # stairways.com is the official download host per the vendor homepage
  url "http://files.stairways.com/keyboardmaestro-#{version.gsub('.','')}.zip"
  name 'Keyboard Maestro'
  homepage 'http://www.keyboardmaestro.com/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'Keyboard Maestro.app'
end
