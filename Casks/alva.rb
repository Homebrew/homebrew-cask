cask 'alva' do
  version '0.7.0'
  sha256 'a834429e38d4d3b7fc5805d58c76b7e141b64f9fbe57c032c7e9c5628a24892b'

  # github.com/meetalva/alva was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast 'https://github.com/meetalva/alva/releases.atom',
          checkpoint: '345afc0994022649d69ad7a9d2b5e698122b987f7997610f46b9812d6574637b'
  name 'Alva'
  homepage 'https://meetalva.io/'

  app 'Alva.app'
end
