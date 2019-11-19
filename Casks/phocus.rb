cask 'phocus' do
  version '3.4.6'
  sha256 '8354d277962108c5eff8a9b8dd9347898174214cd27ae26595cedc66a6c1b036'

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name 'Hasselblad Phocus'
  homepage 'https://www.hasselblad.com/software/phocus'

  depends_on macos: '>= :sierra'

  app 'Phocus.app'
end
