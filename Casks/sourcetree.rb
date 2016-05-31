cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  elsif MacOS.release <= :mountain_lion
    version '2.0.5.5'
    sha256 'f23129587703a706a37d5fdd9b2390875305b482a2b4e4b0e34bd49cba9b63c9'
  else
    version '2.3'
    sha256 '944ea6157c76c10b6745e26d2531235e34fd8f400cbdc71818045583b3adf13c'
  end

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.zip"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '281824c0f503c7db534e0ba7684606ab2e3810787154f91096bcf203d344596b'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  auto_updates true

  app 'SourceTree.app'
  binary "#{appdir}/SourceTree.app/Contents/Resources/stree"

  postflight do
    suppress_move_to_applications
  end

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
                '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
                '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
              ]

  caveats do
    files_in_usr_local
  end
end
