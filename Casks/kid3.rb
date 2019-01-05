cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.7.0'
  sha256 '7c5acc17974b4c760072339b9149141fd1d5fa41004cbabaf2fbc4255ed1c5b7'

  # downloads.sourceforge.net/kid3 was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss'
  name 'Kid3'
  homepage 'https://kid3.sourceforge.io/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
