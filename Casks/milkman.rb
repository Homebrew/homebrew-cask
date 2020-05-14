cask 'milkman' do
  version '4.4.0'
  sha256 'd2ecd35c66b04dd8580cdf84547dc45e06d54e955509c18f3265c578780e4b56'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
