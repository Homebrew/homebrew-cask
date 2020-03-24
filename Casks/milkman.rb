cask 'milkman' do
  version '4.3.0'
  sha256 'bc0896ab703e930c2b63e14bbdde1cf41d9d1d39959980b38d899873e3fab33a'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
