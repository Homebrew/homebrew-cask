cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.5.1'
  sha256 'a601637270b6a90774d3486fa1f6726dc9e4ae8d653220ab9b66d510d5cab60d'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '63fc23772c0c7a7fd284922bd27d5e9e388225cbd7bd9f62ffe1a916c7b36ec2'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
