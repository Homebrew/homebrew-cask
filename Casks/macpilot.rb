cask 'macpilot' do
  version '11.0.6'
  sha256 '709374bc16671853e91d81577c38667e2ad7afe0e42dba0d7c5a9741b345b87a'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
