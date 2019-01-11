cask 'jcryptool' do
  version '0.9.9'
  sha256 '6614bbfb2d9b3c6df365cdcff2a6b18c47f006b6fdd6783eb5e4faadabcb18e4'

  url "https://www.cryptool.org/jctdownload/Builds/downloads/stable/jcryptool-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cryptool.org/en/jct-downloads/stable'
  name 'JCrypTool'
  homepage 'https://www.cryptool.org/en/jcryptool'

  app 'jcryptool.app'

  caveats do
    depends_on_java('8')
  end
end
