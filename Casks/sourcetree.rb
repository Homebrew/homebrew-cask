cask :v1 => 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.0.5.3'
    sha256 '562e5885c10a5b1791938b7e6d1548511c5bc19fb9411c9bb2d69d6189ed9951'
  end

  # atlassian.com is the official download host per the vendor homepage
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          :sha256 => 'dd088b305deac3d080eb99366bbdfbc6f0a933e1bdf14c96bb4e560644d55c45'
  name 'SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis
  tags :vendor => 'Atlassian'

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
