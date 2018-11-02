cask 'molotov' do
  version '3.0.0'
  sha256 '77f921fd91d35ced1197e3854385052497645ca6b5fd33b1d3cabad880dca789'

  url "https://desktop-auto-upgrade.molotov.tv/mac/Molotov-v#{version}.dmg"
  name 'Molotov'
  homepage 'https://www.molotov.tv/'

  app 'Molotov.app'
end
