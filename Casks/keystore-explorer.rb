cask 'keystore-explorer' do
  version '5.3.0'
  sha256 '8ccf57e1282d2a4538d9a2b551bc0825cc3144c18068b0fd492251340497a5a7'

  # github.com/kaikramer/keystore-explorer was verified as official when first introduced to the cask
  url "https://github.com/kaikramer/keystore-explorer/releases/download/v#{version.major_minor}/kse-#{version.no_dots}.dmg"
  appcast 'https://github.com/kaikramer/keystore-explorer/releases.atom',
          checkpoint: '5712e8f8baedb730cd02b27274daf3a052116caba13ce6e12d97f3a2ac93513d'
  name 'KeyStore Explorer'
  homepage 'http://keystore-explorer.org/'

  app "KeyStore Explorer #{version}.app"
end
