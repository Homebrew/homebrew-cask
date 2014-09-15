class Sourcetree < Cask
  version '1.9.8'
  sha256 'ef23ddbf9585138cbe86ee5c0d98b5202ae6abfe62571a960839396151913c7d'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
