cask 'milkman' do
  version '4.2.0'
  sha256 'c26655a4938288c3479e68f0e9f9e2c33f82dbccbfb5d2a76d6a403be31a9094'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
