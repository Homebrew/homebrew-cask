cask 'scrivener' do
  version '2.81.2,106'
  sha256 'b4a09047b4b7f7522d58fdd5736f7de9d7250447f3573fd993964bfb3b6be1e1'

  # scrivener.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://scrivener.s3.amazonaws.com/mac_updates/Scrivener_#{version.after_comma}_#{version.before_comma}.zip"
  appcast "https://www.literatureandlatte.com/downloads/scrivener-#{version.major}.xml",
          checkpoint: '5ebdbf2cd82e1d644ad1a63fac21cbc02ca8d180295eea9ab944d91700f8052c'
  name 'Scrivener'
  homepage 'https://literatureandlatte.com/scrivener.php'

  app 'Scrivener.app'
end
