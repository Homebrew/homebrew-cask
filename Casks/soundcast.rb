cask :v1 => 'soundcast' do
  version '1.5'
  sha256 '19c53bac9900904ed3773360036ecc04f0c3cc24d09f908e3692b4ac9c422505'

  url "https://github.com/andresgottlieb/soundcast/releases/download/v#{version}/Soundcast_v#{version}.zip"
  appcast 'https://github.com/andresgottlieb/soundcast/releases.atom'
  name 'Soundcast'
  homepage 'https://github.com/andresgottlieb/soundcast'
  license :mit

  depends_on :cask => 'soundflower'

  app 'soundcast.app'
end
