class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.3.1.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.3.1'
  sha256 '2a1556001c74fd0afa88eaef9927f35114ac1cf8489eca283ae94e42ad150397'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
