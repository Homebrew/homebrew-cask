cask 'energybar' do
  version '1.6.19169'
  sha256 '573b040a27da32842581b22f9a31920c78a8661a277b9a7bf8ae8e64e3b9212f'

  url "https://github.com/billziss-gh/EnergyBar/releases/download/v#{version.major_minor}/EnergyBar-#{version}.zip"
  appcast 'https://github.com/billziss-gh/EnergyBar/releases.atom'
  name 'EnergyBar'
  homepage 'https://github.com/billziss-gh/EnergyBar'

  depends_on macos: '>= :high_sierra'

  app 'EnergyBar.app'
end
