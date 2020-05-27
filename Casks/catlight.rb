cask 'catlight' do
  version '2.32.2'
  sha256 'b3f6a4027813ab8f4549243fd7fab85cdb4a3ff2a2059af4f05b772d12af78fb'

  url "https://download.catlight.io/rel/mac/beta/CatLightSetup-#{version}.zip"
  appcast 'https://catlight.io/downloads'
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '>= :sierra'

  app 'Catlight.app'
end
