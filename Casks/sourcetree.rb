class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.1.dmg'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.1'
  sha256 '0034097468b005ff06e2656ee286ee1017dcfa15c890fa5418d6f0739b634196'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
