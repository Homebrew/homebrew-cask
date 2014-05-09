class Sourcetree < Cask
  url 'http://downloads.atlassian.com/software/sourcetree/SourceTree_1.9.2.dmg'
  homepage 'http://www.sourcetreeapp.com/'
  version '1.9.2'
  sha256 'ec6fe203d8ecb985587259066fe489f42c85e18d77929116a8989ab5d1fef376'
  link 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
end
