cask 'phocus' do
  version '3.4.3'
  sha256 '8b2b830d92604002a7406c2bbd8a1ec7eb4941e388d62e1b2a73e03ec9de76d2'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
