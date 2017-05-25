cask 'sourcetree' do
  if MacOS.version <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  elsif MacOS.version <= :mountain_lion
    version '2.0.5.5'
    sha256 'f23129587703a706a37d5fdd9b2390875305b482a2b4e4b0e34bd49cba9b63c9'
  else
    version '2.5.2a'
    sha256 'f83693a95cd376644644cc2b4c534ed4adcf23560af8094a7131a92f6f1d5e05'
  end

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '6031bd143374559a84872d0b9ecef5420173e11fb3a0453cfaa092878c6bc908'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true

  app 'SourceTree.app'
  binary "#{appdir}/SourceTree.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
                '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
              ]
end
