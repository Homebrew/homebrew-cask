cask 'showyedge' do
  version '4.0.0'
  sha256 '29c16c030055a472b7b5c06a2dccc8bc85e1895c27bea14622ef879df8db93a1'

  # github.com/pqrs-org/ShowyEdge/ was verified as official when first introduced to the cask
  url "https://github.com/pqrs-org/ShowyEdge/releases/download/v#{version}/ShowyEdge-#{version}.dmg"
  appcast 'https://pqrs.org/osx/ShowyEdge/files/appcast.xml'
  name 'ShowyEdge'
  homepage 'https://pqrs.org/osx/ShowyEdge/'

  app 'ShowyEdge.app'
end
