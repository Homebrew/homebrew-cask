cask "qlab" do
  version "4.6.10,4610"
  sha256 "659da450d83e1f30d9515190c873ec95b95bf9a2e231e8bda2566819d32c176e"

  url "https://qlab.app/downloads/archive/QLab-#{version.csv.first}.zip"
  name "QLab"
  homepage "https://qlab.app/"

  livecheck do
    url "https://qlab.app/appcast/v#{version.major}/"
    strategy :sparkle
  end

  auto_updates true

  app "QLab.app"
end
