cask 'electerm' do
  version '1.0.23'
  sha256 '11b856cf3d3a521a9746125352c0c520b7e5ef196faead55b4440b1ac138d00e'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
