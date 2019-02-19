cask 'mediaelch' do
  version '2.6.1-dev_2019-02-09_14-04_git-master-c1f194a'
  sha256 '8412e258e303b4be13ec6890c5e330316054c28b505e3922f0ffcb0e9cc2e208'

  # bintray.com/artifact/download/komet/MediaElch was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/komet/MediaElch/MediaElch_macOS_#{version}.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  app 'MediaElch.app'
end
