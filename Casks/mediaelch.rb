cask 'mediaelch' do
  version '2.6.2'
  sha256 '772c4ea524b5f147f061e3c7dc789e3949628ebd0f349580b2dce738873dac15'

  # github.com/Komet/MediaElch was verified as official when first introduced to the cask
  url "https://github.com/Komet/MediaElch/releases/download/v#{version}/MediaElch_#{version}_macOS.dmg"
  appcast 'https://github.com/Komet/MediaElch/releases.atom'
  name 'MediaElch'
  homepage 'https://www.kvibes.de/en/mediaelch/'

  depends_on macos: '>= :sierra'

  app 'MediaElch.app'
end
