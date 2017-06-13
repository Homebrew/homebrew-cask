cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.5'
  sha256 '8e3fcdcf1fda8219a16ffc91e015d4d8a8784558e81f9e4068650566cfc35e84'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '09880f4083cf1aff970af27ecf55925068f0d770f83b1dc9e64ab0c5973b6be5'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
