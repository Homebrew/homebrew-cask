cask 'phocus' do
  version '3.4.2'
  sha256 '79ad542b8888b67c51a23222ba04cff75934a7bc109bc947775a2c3b567f94de'

  url "https://cdn.hasselblad.com/phocus/Phocus.#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
