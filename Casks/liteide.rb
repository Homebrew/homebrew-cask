cask 'liteide' do
  version '33.2'
  sha256 'abaf9492c156048bff09fb3c6dac7657fbc6fb73389264f24b2cd03d81ad2e47'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'c19004e6cdb7414f81805b957fc88d0ad1dffc265952ffcf17455407b2d6ec43'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
