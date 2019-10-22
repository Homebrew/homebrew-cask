cask 'macpilot' do
  version '11.0.4'
  sha256 '2db7806f18c7634d192e939b6520af09c75f9cd295bd4d03533f44bffcb9a239'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
