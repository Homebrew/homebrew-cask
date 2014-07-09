class Sourcetree < Cask
  version '1.9.5'
  sha256 '9542878e2174d5c42ad4667a0c4daeb4194fe916776457b11fcddc966206640a'

  url 'https://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.5.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
