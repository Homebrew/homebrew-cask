cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.2.3'
    sha256 '152e2de3ef1e9f808476118ed4021cd057e3702dc6825cf5d3b1b4ca80360c2b'
  end

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '0b0699844a3d0c191294f5b610c856975bc38495be87db1f57109a2853714da5'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  auto_updates true

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
              ]

  caveats do
    files_in_usr_local
  end
end
