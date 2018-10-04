cask 'energybar' do
  version '1.4.18258'
  sha256 'f5f408d820bd5debe53925f1a41807d2acf05f565267123a5edb85d27c1eb2f0'

  url "https://github.com/billziss-gh/EnergyBar/releases/download/v#{version.major_minor}/EnergyBar-#{version}.zip"
  appcast 'https://github.com/billziss-gh/EnergyBar/releases.atom'
  name 'EnergyBar'
  homepage 'https://github.com/billziss-gh/EnergyBar'

  depends_on macos: '>= :high_sierra'

  app 'EnergyBar.app'
end
