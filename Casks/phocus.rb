cask 'phocus' do
  version '3.4.1'
  sha256 'b10502e5a3e671b1c3ba377b26b27cf4b0eb1285b168ba7a754ba59d6120187d'

  url "https://cdn.hasselblad.com/phocus/Phocus.#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
