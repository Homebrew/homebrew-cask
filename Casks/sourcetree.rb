class Sourcetree < Cask
  version '2.0.0'
  sha256 'a4f39a0d9e8ab3ec91f1d8399eb4ee6ddecdf0e5885debcf3d1c6aa893126fbc'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml'
  homepage 'http://www.sourcetreeapp.com/'

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'
  caveats do
    files_in_usr_local
  end
  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                 ]
end
