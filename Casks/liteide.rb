cask 'liteide' do
  version '35.5'
  sha256 '43a6704d6d48702cdfa2b29fe711518e143da2f879f287c408996400bdfc6181'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.major_minor}/liteidex#{version}.macos-qt5.9.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
