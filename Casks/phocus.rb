cask 'phocus' do
  version '3.4.5'
  sha256 'dd8baa2da2498344fde8331a6d350fcd4c2469cb41bec9ba2823394c53ef1528'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
