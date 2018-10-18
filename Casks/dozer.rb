cask 'dozer' do
  version '1.1.3'
  sha256 '214c7feb7acfcc554c1a24cad11ff33fcfe1e402406209b969dc087527f45f1a'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Dozer.app'
end
