class Sourcetree < Cask
  version '1.9.6'
  sha256 'e2a968896e566cbbf6b307213630ead0e4d83a04551ce961a6b91983fbbaf98a'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
