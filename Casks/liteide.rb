cask 'liteide' do
  version '36'
  sha256 'fef1c1c964e1ccdabdb8bd576a421c70250cc838f088cb5a7a523b427448213e'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.major_minor}/liteidex#{version}.macos-qt5.9.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
