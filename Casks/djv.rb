cask 'djv' do
  version '1.2.5'
  sha256 '29c148722d7a6e5a0e37b26faf07e876988ce4d6a74b7c89e174f9738930786c'

  # downloads.sourceforge.net/djv was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/DJV-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/djv/rss?path=/djv-stable'
  name 'DJV Imaging'
  homepage 'https://djv.sourceforge.io/'

  app 'DJV.app'
end
