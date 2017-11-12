cask 'kactus' do
  version '0.2.12'
  sha256 'f0b28adc55513dcca3519c600f23fc1ce59fea8dc113c535793b5e2015e6f4d8'

  # github.com/kactus-io/kactus was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast 'https://github.com/kactus-io/kactus/releases.atom',
          checkpoint: '04630539b7172a74a4d5054b5e607a724643d83f60c913ebd996af8793711ba3'
  name 'Kactus'
  homepage 'https://kactus.io/'

  depends_on cask: 'sketch'

  app 'Kactus.app'
end
