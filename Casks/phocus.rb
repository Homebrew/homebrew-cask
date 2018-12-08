cask 'phocus' do
  version '3.4'
  sha256 'd079aa5648caa13c14dc9ef6d04496a16879a1edc6f12a2f2d0a7545e4e9bdc7'

  url "https://cdn.hasselblad.com/phocus/Phocus.#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
