cask 'scrivener' do
  version '3.0.1,966'
  sha256 '704ae6632026a6b18f4f84df383696ca7bda37ea79ce5f3a269cd04ef3c622d4'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '86ba4658751c0ebb95046ca0c836e81c6d21259da8c051f41c4986cd59b6302b'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
