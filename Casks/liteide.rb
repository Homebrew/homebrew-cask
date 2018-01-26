cask 'liteide' do
  version '33.1'
  sha256 '8cdf02a057f802c14e6c70d88414930489c13c77a26427f3e1333e2e66ef9616'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: '8f33190cbde5cfb5d7387a74a7fd96b9883f7eaab015590a6d1f0270452cf0a9'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
