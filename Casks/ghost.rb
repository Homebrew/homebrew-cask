cask 'ghost' do
  version '1.5.2'
  sha256 '775f45ba458f457a453b51783297b0354bf76d48c4ff7403bd2d8b50ab58f087'

  # github.com/TryGhost/Ghost-Desktop was verified as official when first introduced to the cask
  url "https://github.com/TryGhost/Ghost-Desktop/releases/download/v#{version}/ghost-desktop-#{version}-osx.dmg"
  appcast 'https://github.com/TryGhost/Ghost-Desktop/releases.atom',
          checkpoint: 'ecc58393423feca65bdf5573c3cf337d24e581a5b39d99daa381e0159e20b327'
  name 'Ghost Desktop'
  homepage 'https://ghost.org/downloads/'

  depends_on macos: '>= :mavericks'

  app 'Ghost.app'
end
