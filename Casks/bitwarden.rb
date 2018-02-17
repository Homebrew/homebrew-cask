cask 'bitwarden' do
  version '0.0.5'
  sha256 '01b9dd63fb30edf806bc1a5df2b1a2c886e93557baf5e37eb22783012536729a'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: '12e2fa0af28b7672619b17b96a7ba9c62cfbe9d0f6685839572b0b014f0fae05'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
