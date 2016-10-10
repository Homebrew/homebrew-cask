cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.1'
  sha256 '607d2cdf682d7c8b7df20f08466d4fe1e9f0c27ced66dbe766668752d600173e'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: 'f51a382a4f5278a1d43f17c95464ff63d65cb17d61e010a72dabe8c23c8ddd44'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
