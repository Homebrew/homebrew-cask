cask 'altserver' do
  version '1.2.1'
  sha256 '6dcbcd514d6d9bd0c0332a2d6e392680e292dd3d2b494d68bcb2ad25ccbc6420'

  # f000.backblazeb2.com/file was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/altstore/altserver/#{version.dots_to_underscores}.zip"
  appcast 'https://altstore.io/altserver/sparkle-macos.xml'
  name 'AltServer'
  homepage 'https://altstore.io/'

  depends_on macos: '>= :mojave'

  app 'AltServer.app'
end
