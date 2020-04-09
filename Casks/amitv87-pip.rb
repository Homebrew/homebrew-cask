cask 'amitv87-pip' do
  version '1.30'
  sha256 'e4797b97d37a0b49e363db4e941a67362e1a9d2d8f67de54394deb690ccac4b8'

  url "https://github.com/amitv87/PiP/releases/download/#{version}/PiP-#{version}.dmg"
  appcast 'https://github.com/amitv87/PiP/releases.atom'
  name 'PiP'
  homepage 'https://github.com/amitv87/PiP'

  depends_on macos: '>= :sierra'

  app 'PiP.app'
end
