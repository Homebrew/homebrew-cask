cask 'liteide' do
  version '34,5.9.5'
  sha256 '97e9be26238a8b6bf7816008cb0419124d5ee0b35cec73787286e023a5ad178e'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.before_comma}/liteidex#{version.before_comma}.macos-qt#{version.after_comma}.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
