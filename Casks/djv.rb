cask 'djv' do
  version '1.2.6'
  sha256 'de29b756a8d8cc4f88fa4f5f2718680a7b41c937c48658617d796190aefa19cf'

  # downloads.sourceforge.net/djv was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/djv/djv-stable/#{version}/DJV-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/djv/rss?path=/djv-stable'
  name 'DJV Imaging'
  homepage 'https://djv.sourceforge.io/'

  app 'DJV.app'
end
