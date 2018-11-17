cask 'scrivener' do
  version '3.1.1,9852'
  sha256 'e97b0b1382bc4ad60b814a5e50d410b8e0e88bcad88e561d3ee7207fd83a4d99'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
