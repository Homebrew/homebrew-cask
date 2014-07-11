class Sourcetree < Cask
  version '1.9.5.1'
  sha256 '8ffa693a80d783c806cc3e1b6b7be05945065649b8e3995989d02bd44ff4ed87'

  url 'https://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.5.1.dmg'
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
