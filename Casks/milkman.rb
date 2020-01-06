cask 'milkman' do
  version '4.0.0'
  sha256 '80043d9eebde3eaa43d9d92235388a127c43d78414ad7d9b88c84ef2409d1a14'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
