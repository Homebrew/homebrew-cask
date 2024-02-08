cask "energybar" do
  version "1.7.19321"
  sha256 "96c06a93d5916001306af401046295926bf38996d767365c199131e068d85627"

  url "https://github.com/billziss-gh/EnergyBar/releases/download/v#{version.major_minor}/EnergyBar-#{version}.zip"
  name "EnergyBar"
  desc "Touch Bar widget application"
  homepage "https://github.com/billziss-gh/EnergyBar"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on macos: ">= :high_sierra"

  app "EnergyBar.app"
end
