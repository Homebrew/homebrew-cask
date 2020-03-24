cask 'nightfall' do
  version '2.1.0'
  sha256 '900dfe471b40f089d07cec836ad00a315075092cfebd7c86292b7c5a6e33d850'

  url "https://github.com/r-thomson/Nightfall/releases/download/v#{version}/Nightfall.dmg"
  appcast 'https://github.com/r-thomson/Nightfall/releases.atom'
  name 'Nightfall'
  homepage 'https://github.com/r-thomson/Nightfall/'

  depends_on macos: '>= :catalina'

  app 'Nightfall.app'
end
