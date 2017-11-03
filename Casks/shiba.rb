cask 'shiba' do
  version '1.1.0'
  sha256 '1b05abd51e7a237b9c1696a368966a0f1d0baa7d3d0cdcc23337c053b15e0005'

  url "https://github.com/rhysd/Shiba/releases/download/v#{version}/Shiba-darwin-x64.zip"
  appcast 'https://github.com/rhysd/Shiba/releases.atom',
          checkpoint: '64b011f9a511f2ab9da7e547f0ed4f5be0406728581fbd2011a6d241175f722a'
  name 'Shiba'
  homepage 'https://github.com/rhysd/Shiba/'

  app 'Shiba-darwin-x64/Shiba.app'
end
