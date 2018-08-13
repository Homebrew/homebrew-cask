cask 'liteide' do
  version '34.1,5.9.5'
  sha256 '5b89f4d59268a343e375a549f7c5a93f73730d73de77104dfbce8e11a2111be5'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macosx-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
