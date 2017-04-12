cask 'lima' do
  version '1.3.1'
  sha256 '53843bcfb906b70c5f35f326401ca66287e8652a65dc78afde044b6ef5c4105c'

  url "https://update.api.meetlima.com/downloads/osx/dist/Lima_#{version}.dmg"
  name 'Lima'
  homepage 'https://meetlima.com/'

  app 'Lima.app'
end
