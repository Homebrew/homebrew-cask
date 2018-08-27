cask 'mega' do
  version '7.0.18'
  sha256 '4f6e90fda09dab6cb942382146a473ba18c58dc4cb79fed34a2fc0ca16f10e04'

  url "http://www.megasoftware.net/releases/MEGA#{version}_mac32_setup.dmg"
  name 'MEGA'
  homepage 'http://megasoftware.net/'

  app "MEGA#{version.major}.app"
end
