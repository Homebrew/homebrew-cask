cask 'mediaelch' do
  version '2.6.0'
  sha256 'c4a44f10f59281a35910e476a450a3811dcd1eb7be666dd0acb4518767fa6bc7'

  # github.com/Komet/MediaElch was verified as official when first introduced to the cask
  url "https://github.com/Komet/MediaElch/releases/download/v#{version}/MediaElch_#{version}_macOS.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  depends_on macos: '>= :sierra'

  app 'MediaElch.app'
end
