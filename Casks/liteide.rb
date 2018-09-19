cask 'liteide' do
  version '34.2,5.9.5'
  sha256 '4cee36757151c41ab3299be32edba2542fce12dca7801946123d8fd9f082bdcc'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macosx-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
