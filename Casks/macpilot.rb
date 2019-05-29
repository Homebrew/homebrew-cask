cask 'macpilot' do
  version '10.15'
  sha256 'e2a9034fecb284032a57a1020c7d6402a25fa4c5f3338b08d44c0d53d04ba36a'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :sierra'

  app 'MacPilot.app'
end
