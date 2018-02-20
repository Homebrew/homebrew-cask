cask 'bitwarden' do
  version '0.0.6'
  sha256 '6efa96814df91af1bf7f1340d4f4fff2180e181c759808e8fcda7200aa80e065'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: '983bc21cc62e88713179669cae859c272690a1c7c78feccc75dbf226de896370'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
