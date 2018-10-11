cask 'mediaelch' do
  version '2.4.3-dev_2018-09-11_18-50_git-master-35ac397'
  sha256 'a2544af96e0a42aaa2810266f2c6ea5e6118636f905f215a36f27753b8a161c6'

  # bintray.com/artifact/download/komet/MediaElch was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/komet/MediaElch/MediaElch_macOS_#{version}.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  app 'MediaElch.app'
end
