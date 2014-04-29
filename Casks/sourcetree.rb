class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.0.dmg'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.0'
  sha256 '78867c7b9781254bcdb1e366770677519305213f35d4efd106e23d7c5a74ca82'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
