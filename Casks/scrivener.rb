cask 'scrivener' do
  version '3.0.1'
  sha256 '8cdeb3a27eb4f0ca9fb12ff6e987ad699e23a9d8497f352d68e1dffc18347a85'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://scrivener.s3.amazonaws.com/Scrivener.dmg'
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '86ba4658751c0ebb95046ca0c836e81c6d21259da8c051f41c4986cd59b6302b'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
