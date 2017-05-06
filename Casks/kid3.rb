cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.5'
  sha256 'aa8ba936fca9b04613a773c151dedd8e400fa785d673cc7e4e7822b4c2fb59fc'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '142c4420f784998ac5eac81b16b102f5112d0ee045b29991d361843cb33aca8a'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
