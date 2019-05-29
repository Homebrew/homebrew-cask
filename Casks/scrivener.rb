cask 'scrivener' do
  version '3.1.2,10882'
  sha256 'a4b72a9e273bcaca8e8b9e75a735e6f37c3f801c7d1466b53ecf927b4af2c82a'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml"
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
