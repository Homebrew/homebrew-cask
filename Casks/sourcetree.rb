cask 'sourcetree' do
  if MacOS.release <= :snow_leopard
    version '1.8.1'
    sha256 '37a42f2d83940cc7e1fbd573a70c3c74a44134c956ac3305f6b153935dc01b80'
  elsif MacOS.release <= :mountain_lion
    version '2.0.5.5'
    sha256 'f23129587703a706a37d5fdd9b2390875305b482a2b4e4b0e34bd49cba9b63c9'
  else
    version '2.2.4'
    sha256 '068b594ca1612a08c575545baa363741a1024b67e3d3a86747c84f52a0c4e032'
  end

  # atlassian.com was verified as official when first introduced to the cask
  url "https://downloads.atlassian.com/software/sourcetree/SourceTree_#{version}.dmg"
  appcast 'https://www.sourcetreeapp.com/update/SparkleAppcast.xml',
          checkpoint: '281824c0f503c7db534e0ba7684606ab2e3810787154f91096bcf203d344596b'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'
  license :gratis

  auto_updates true

  app 'SourceTree.app'
  binary 'SourceTree.app/Contents/Resources/stree'

  postflight do
    suppress_move_to_applications
  end

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2'

  zap delete: [
                '~/Library/Application Support/SourceTree',
                '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
              ]

  caveats do
    files_in_usr_local
  end
end
