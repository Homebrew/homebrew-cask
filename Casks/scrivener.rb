cask 'scrivener' do
  version '3.0.2,1506'
  sha256 '05e360e15931fbf2114d50d6b926b3c8c899257e5a514b3add8ed4f6edd313aa'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_1012_#{version.after_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '003e8dffe156aafbe056a8c0070373ca5ba99b82a0b098ffb86c41dbd891cb5c'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  depends_on macos: '>= :sierra'

  app 'Scrivener.app'
end
