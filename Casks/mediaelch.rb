cask 'mediaelch' do
  version '2.6.0_2019-01-06_11-00_git-master-d62c091'
  sha256 '7cfa5c456f2c02f15e712bba8fd4605a85e713e13ac923876b87c644e5e699e7'

  # bintray.com/artifact/download/komet/MediaElch was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/komet/MediaElch/MediaElch_macOS_#{version}.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  app 'MediaElch.app'
end
