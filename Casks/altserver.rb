cask 'altserver' do
  version '1.1.2'
  sha256 '782add0c2b65e71e1c3dc6ff84d5e260cc7c79ada1c60f9f0d178f60c91f2593'

  # f000.backblazeb2.com/file was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/altstore/altserver-#{version.dots_to_underscores}.dmg"
  appcast 'https://altstore.io/altserver/sparkle-macos.xml'
  name 'AltServer'
  homepage 'https://altstore.io/'

  depends_on macos: '>= :mojave'

  app 'AltServer.app'
end
