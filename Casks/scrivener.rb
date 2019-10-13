cask 'scrivener' do
  version '3.1.4,12105'
  sha256 '445a8980ee7b21d8d2e0b1d672577688360c47c10be7d305777fde9bb6c8965e'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
