class Sourcetree < Cask
  version '1.9.4.1'
  sha256 '36927c77a9e2ac6e667df4295ec7382ea156b372bf90b3e8135a83fc05652562'
  
  url 'https://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.4.1.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
