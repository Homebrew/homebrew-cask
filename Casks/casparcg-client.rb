cask 'casparcg-client' do
  version '2.0.8'
  sha256 '0bb51b061ec6a0a01b3702869e4ca24b298660cd82e892c39395a0b21ea7fb5b'

  # downloads.sourceforge.net/casparcg/CasparCG_Client was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/casparcg/CasparCG_Client/CasparCG_Client_#{version.major_minor}/CasparCG_Client_#{version}_Mac.dmg"
  appcast 'https://sourceforge.net/projects/casparcg/rss?path=/CasparCG_Client',
          checkpoint: 'ba0ae13404fc63e51bb6050d793027ee1b126708a15f4b487c654f11f9009912'
  name 'CasparCG Client'
  homepage 'http://casparcg.com/'

  app 'CasparCG Client.app'
end
