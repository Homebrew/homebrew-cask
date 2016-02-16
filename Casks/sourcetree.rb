cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.2'
    sha256 'bec6a371c144c7733e3b706b12b7533459fd8884021339c636e37e17a9d6ad22'
  end

  # atlassian.com is the official download host per the vendor homepage
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: 'd1b4f4cb63aafd67821535900087ded0bc91e5261c9f2291c2b5904ca451ae6b'
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
