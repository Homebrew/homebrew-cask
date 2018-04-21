cask 'mailbutler' do
  version '2.0.4-9086'
  sha256 'b6d6ece72ceb49638e9bd36cc370b2b22ad5dfd50d27de25a70bcf094f3a1648'

  # mailbutler-data.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mailbutler-data.s3.amazonaws.com/downloads/Mailbutler_#{version}.zip"
  appcast "https://www.mailbutler.io/appcast#{version.major}.php",
          checkpoint: 'a5c5085d09e66f9ee23f6ea56f27248b7b063a2acf82175f9702972ec377e411'
  name 'MailButler'
  homepage 'https://www.mailbutler.io/'

  app 'MailButler.app'
end
