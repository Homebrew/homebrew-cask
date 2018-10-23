cask 'liteide' do
  version '34.3,5.9.5'
  sha256 'c93d6aa1cc5568d4845a511967e25da2bcedc3e03a8283860bef0280e3aa745c'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macosx-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
