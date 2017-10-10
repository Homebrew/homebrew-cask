cask 'casparcg-client' do
  version '2.0.8'
  sha256 '0bb51b061ec6a0a01b3702869e4ca24b298660cd82e892c39395a0b21ea7fb5b'

  # downloads.sourceforge.net/casparcg/CasparCG_Client/CasparCG_Client_2.0 was verified as official when first introduced to the cask
  url 'https://downloads.sourceforge.net/casparcg/CasparCG_Client/CasparCG_Client_2.0/CasparCG_Client_2.0.8_Mac.dmg'
  name 'CasparCG Client'
  homepage 'http://casparcg.com/'

  app 'CasparCG Client.app'
end
