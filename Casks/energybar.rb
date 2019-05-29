cask 'energybar' do
  version '1.5.18274'
  sha256 'b415f109879926f588d24c2072f4751e971f5a4d18d878bdbe963e267eb5e43c'

  url "https://github.com/billziss-gh/EnergyBar/releases/download/v#{version.major_minor}/EnergyBar-#{version}.zip"
  appcast 'https://github.com/billziss-gh/EnergyBar/releases.atom'
  name 'EnergyBar'
  homepage 'https://github.com/billziss-gh/EnergyBar'

  depends_on macos: '>= :high_sierra'

  app 'EnergyBar.app'
end
