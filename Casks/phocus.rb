cask 'phocus' do
  version '3.4.8'
  sha256 'c1fe13b000a913ee8aa65f451a1d99be07d76c099fedcbb2f392f979f986c856'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
