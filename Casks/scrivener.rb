cask 'scrivener' do
  version '2.81.2,106'
  sha256 'b4a09047b4b7f7522d58fdd5736f7de9d7250447f3573fd993964bfb3b6be1e1'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/mac_updates/Scrivener_#{version.after_comma}_#{version.before_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: 'd07056774e32c51cb38b9730c90fa41da16413d2de3af00a2dd6b8e50c097755'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  app 'Scrivener.app'
end
