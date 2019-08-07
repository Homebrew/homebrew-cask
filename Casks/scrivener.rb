cask 'scrivener' do
  version '3.1.3,11945'
  sha256 '24fbb3b6ae869a029371606242f0cea2f705bca5996d6052017f9bc9094902b7'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
