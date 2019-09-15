cask 'moonitor' do
  version '1.0.0'
  sha256 'daa4aa6d2339167173e092c9cec3e0e413439e25f8798f6112eb6edf4f9d668b'

  url "https://moonitor.io/wp-content/uploads/app/Moonitor-#{version}.dmg"
  appcast 'https://moonitor.io/'
  name 'Moonitor'
  homepage 'https://moonitor.io/'

  app 'Moonitor.app'
end
