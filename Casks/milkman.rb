cask 'milkman' do
  version '4.5.0'
  sha256 '2537bbc8f71cfaf4f209ffbf665ca9c605a61743fa7d8c241b843c0c72ac9a5b'

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast 'https://github.com/warmuuh/milkman/releases.atom'
  name 'Milkman'
  homepage 'https://github.com/warmuuh/milkman'

  app 'Milkman.app'

  zap trash: '~/Library/Application Support/Milkman'
end
