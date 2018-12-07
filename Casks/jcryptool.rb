cask 'jcryptool' do
  version '0.9.9'
  sha256 '6614bbfb2d9b3c6df365cdcff2a6b18c47f006b6fdd6783eb5e4faadabcb18e4'

  url 'https://www.cryptool.org/jctdownload/Builds/downloads/stable/jcryptool-0.9.9-macosx.cocoa.x86_64.tar.gz'
  name 'JCrypTool'
  homepage 'https://www.cryptool.org/en/jcryptool'

  depends_on cask: 'java8'
  depends_on arch: :x86_64

  app 'jcryptool.app'
end
