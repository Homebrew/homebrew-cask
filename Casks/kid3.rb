cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.6.2'
  sha256 'ad458d7e25236fe534a0a63e185d5b9d542526f60cbd5e15d413324c6343b2f3'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
