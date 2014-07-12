class Sourcetree < Cask
  version '1.9.5.2'
  sha256 'f1bb16a300b2e7000b83e1b864ab84bade92c3d329dce007089dccf414a8e6b0'

  url 'https://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.5.2.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
