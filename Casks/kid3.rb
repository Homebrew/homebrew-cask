cask 'kid3' do
  # note: "3" is not a version number, but an intrinsic part of the product name (ID3 tags)
  version '3.4.4'
  sha256 '7680e25a0c57c9943e76d3e537ed429ffdf1cc74c96a87e21d6eaf275ff41560'

  url "https://downloads.sourceforge.net/kid3/kid3-#{version}-Darwin.dmg"
  appcast 'https://sourceforge.net/projects/kid3/rss',
          checkpoint: '8492b85661dfc9269579ec520ee4d57c08df8bea53469b898e0393d45e37d105'
  name 'Kid3'
  homepage 'http://kid3.sourceforge.net/'

  app 'kid3.app'
  binary "#{appdir}/kid3.app/Contents/MacOS/kid3-cli"
end
