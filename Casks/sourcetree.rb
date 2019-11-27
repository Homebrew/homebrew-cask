cask 'sourcetree' do
  if MacOS.version <= :sierra
    version '2.7.6a'
    sha256 'd60614e9ab603e0ed158b6473c36e7944b2908d9943e332c505eba03dc1d829e'

    # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
    url "https://downloads.atlassian.com/software/sourcetree/Sourcetree_#{version}.zip"
  elsif MacOS.version <= :high_sierra
    version '3.2.1_225'
    sha256 '4bd82affa3402814c3d07ff613fbc8f45da8b0cda294d498ffbb0667bf729c9f'

    # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version}.zip"
  else
    version '4.0_232'
    sha256 '626e3e88bb4656d26c6faafec442250e9fc221dd0037b0078b8e2776899285f1'

    # atlassian.com/software/sourcetree was verified as official when first introduced to the cask
    url "https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_#{version}.zip"
  end

  appcast 'https://product-downloads.atlassian.com/software/sourcetree/Appcast/SparkleAppcastGroup1.xml'
  name 'Atlassian SourceTree'
  homepage 'https://www.sourcetreeapp.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Sourcetree.app'
  binary "#{appdir}/Sourcetree.app/Contents/Resources/stree"

  uninstall launchctl: 'com.atlassian.SourceTreePrivilegedHelper2',
            quit:      'com.torusknot.SourceTreeNotMAS'

  zap trash: [
               '~/Library/Application Support/SourceTree',
               '~/Library/Caches/com.torusknot.SourceTreeNotMAS',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.plist',
               '~/Library/Preferences/com.torusknot.SourceTreeNotMAS.LSSharedFileList.plist',
               '~/Library/Saved Application State/com.torusknot.SourceTreeNotMAS.savedState',
             ]
end
