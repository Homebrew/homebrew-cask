cask 'showyedge' do
  version '3.7.0'
  sha256 'f94c5eb699f03daa44db74829ab76935971b031c52bb116fcc8e2c44c2dc3cf3'

  # github.com/pqrs-org/ShowyEdge was verified as official when first introduced to the cask
  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
