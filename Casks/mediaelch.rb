cask 'mediaelch' do
  version '2.6.4'
  sha256 '99deb5d0bc8b0d84b98b7cf0dc256b2e860d7675c4c297c1c569b944a9c83935'

  # github.com/Komet/MediaElch was verified as official when first introduced to the cask
  url "https://github.com/Komet/MediaElch/releases/download/v#{version}/MediaElch_#{version}_macOS.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  depends_on macos: '>= :sierra'

  app 'MediaElch.app'
end
