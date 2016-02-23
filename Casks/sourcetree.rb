cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  else
    version '2.2.2'
    sha256 'c78e51115f7438198ac547f924417af93eed440c22428c6260553c252a1e33b3'
  end

  # atlassian.com is the official download host per the vendor homepage
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '0ed548e55a55471e451ed92017bee7b40ff9f2d7b6ef4edcba0abb4eeac207de'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  auto_updates true

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
              ]

  caveats do
    files_in_usr_local
  end
end
