cask 'curio' do
  version '13000.17'
  sha256 '9601606dfc33d001381694a29b4f3a54709e8099c93345c99b9b05726f7b95d5'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio12MarkdownAppcast.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :sierra'

  app 'Curio.app'
end
