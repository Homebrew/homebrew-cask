cask 'spotit' do
  version 'v0.0.1-alpha'
  sha256 '504f7a66cddb62bd7a3ca4f9fd70fddec64d82cc1e8762e569b01f8ec9a6bbb3'

  url "https://github.com/rwoll/spotit/releases/download/#{version}/SpotIt.zip"
  appcast 'https://github.com/rwoll/spotit/releases.atom',
          checkpoint: '91dbdb97db12d8bedb7d293ee4d922751ec448f763ef819ec1cc5c321991be2e'
  name 'SpotIt'
  homepage 'https://github.com/rwoll/spotit'

  app 'SpotIt-darwin-x64/SpotIt.app'
end
