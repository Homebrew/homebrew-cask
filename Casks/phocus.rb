cask 'phocus' do
  version '3.5'
  sha256 'e271c1f50fe4e8c2273be7a0b5babca61ab731ad65bdac62e6a4651ff64bbd10'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
