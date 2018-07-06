cask 'liteide' do
  version '33.4,5.9.5'
  sha256 '9e01622e3bc8f982cb79ff999ebbbaa9377a2cbab5830a95cda8b319706e6723'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macosx-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
