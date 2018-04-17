cask 'lbry' do
  version '0.21.2'
  sha256 'e6f5af33929484fb27f76761c24c901fe651f5dd389b87c4c09c867edbb33221'

  # github.com/lbryio/lbry-app was verified as official when first introduced to the cask
  url "https://github.com/lbryio/lbry-app/releases/download/v#{version}/LBRY_#{version}.dmg"
  appcast 'https://github.com/lbryio/lbry-app/releases.atom',
          checkpoint: '24b688185291edad7e006b36e7faa281f13d1c0c3daa96214538c6406c1c3c93'
  name 'LBRY'
  homepage 'https://lbry.io/'

  app 'LBRY.app'
end
