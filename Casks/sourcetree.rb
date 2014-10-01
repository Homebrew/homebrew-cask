class Sourcetree < Cask
  version '2.0.1'
  sha256 'a548a48d451762a42601750037b7c7daad423d8dcc8ddf93f08462d7dace516a'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'
  license :unknown

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                 ]
end
