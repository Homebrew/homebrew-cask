cask 'milkman' do
  version '4.1.0'
  sha256 '8129d3e9e1f1a3ca9d3e1c6627d32753f009455da373170eb9a7eee0c4adc467'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
