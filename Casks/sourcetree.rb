cask :v1 => 'sourcetree' do

  if MacOS.version <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.0.3'
    sha256 '66f7f8186ff8afa1e8d26fc26bd55ad73380de3d5d9aa5985dfa6b7d143dd0ec'
  end

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => 'b43e0ea95de46d2c270cdbf9765e03ec3f13606cbf0bab5bcd3da0424ce2cff3'
  homepage 'http://www.sourcetreeapp.com/'
  license :unknown    # todo: improve this machine-generated value

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
