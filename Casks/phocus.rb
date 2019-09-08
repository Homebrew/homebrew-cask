cask 'phocus' do
  version '3.4.4'
  sha256 '325432a385bb2a6aa2799110ddbcd60c3db9f1248d9b159c1970f3c7072c2a27'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
