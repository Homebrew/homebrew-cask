class Sourcetree < Cask
  version '2.0.2'
  sha256 'ddab63faf7230ca7fb5ab52b5aa31a1b31f6f658a52b687418e2d5de6b7ba561'

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => 'b43e0ea95de46d2c270cdbf9765e03ec3f13606cbf0bab5bcd3da0424ce2cff3'
  homepage 'http://www.sourcetreeapp.com/'
  license :unknown

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                  '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                 ]

  caveats do
    files_in_usr_local
  end
end
