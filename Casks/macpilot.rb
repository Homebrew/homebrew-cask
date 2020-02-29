cask 'macpilot' do
  version '11.0.9'
  sha256 '448ba08b0a06debd1e252c6ce3434b224379e5dd1ebd6d9c18bd68818a3bf259'

  url 'http://mirror.koingosw.com/products/macpilot/download/macpilot.dmg'
  appcast 'https://www.koingosw.com/postback/versioncheck.php?appname=macpilot&type=sparkle'
  name 'MacPilot'
  homepage 'https://www.koingosw.com/products/macpilot/'

  depends_on macos: '>= :high_sierra'

  app 'MacPilot.app'
end
