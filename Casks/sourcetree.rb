cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.1'
    sha256 '5c50f2ae7d9a4c26af6f1af4b3d30f81a4bfcf6b1386bf8ede73947c1447e305'
  end

  # atlassian.com is the official download host per the vendor homepage
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => 'bad598541c1d7d6cdd934542d55d1f3ce85550e8e76bd6b59b40aecdf85e3c76'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  uninstall :launchctl => 'com.atlassian.SourceTreePrivilegedHelper2'

  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                  '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                 ]

  caveats do
    files_in_usr_local
  end
end
