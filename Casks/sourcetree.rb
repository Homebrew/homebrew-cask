cask 'sourcetree' do
  if MacOS.version <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  elsif MacOS.version <= :mountain_lion
    version '2.0.5.5'
    sha256 'f23129587703a706a37d5fdd9b2390875305b482a2b4e4b0e34bd49cba9b63c9'
  else
    version '2.3.1'
    sha256 'ef1e9f76d9fc3679d915cdc2ae8b159a02367faacde6be860310f29575be0fea'
  end

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '096494e7aef3f14c99700663b0397571b19f2af17e18a8fa63c757409cf79708'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  auto_updates true

  app 'SourceTree.app'
  binary "#{appdir}/SourceTree.app/Contents/Resources/stree"

  postflight do
    suppress_move_to_applications
  end

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
                '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
              ]

  caveats do
    files_in_usr_local
  end
end
