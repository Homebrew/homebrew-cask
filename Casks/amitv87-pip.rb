cask 'amitv87-pip' do
  version '1.10'
  sha256 '6244c9baf32a9f44335119cbf4c284112da9f66dadccdd09e30df8bf345e460a'

  url "https://github.com/amitv87/PiP/releases/download/#{version}/PiP-#{version}.dmg"
  appcast 'https://github.com/amitv87/PiP/releases.atom'
  name 'PiP'
  homepage 'https://github.com/amitv87/PiP'

  depends_on macos: '>= :sierra'

  app 'PiP.app'
end
