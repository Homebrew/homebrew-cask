cask :v1 => 'sourcetree' do

  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.0.4'
    sha256 'fe1477ad902c2965a25560331778ec0b99eeed8e6871b88cb552910abe9e067e'
  end

  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'http://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => 'b43e0ea95de46d2c270cdbf9765e03ec3f13606cbf0bab5bcd3da0424ce2cff3'
  homepage 'http://www.sourcetreeapp.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  uninstall :launchctl => 'com.atlassian.SourceTreePrivilegedHelper2'

  zap :delete => [
                  '~/Library/Application Support/SourceTree',
                  '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                 ]

  caveats do
    files_in_usr_local
  end
end
