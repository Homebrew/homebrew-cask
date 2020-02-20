cask 'my-budget' do
  version '3.4.0-beta'
  sha256 'd3d7acafb05f405e690fdc47ff41bdb7dcce01d252a72d45699de047eb14b8d4'

  # github.com/reZach/my-budget was verified as official when first introduced to the cask
  url "https://github.com/reZach/my-budget/releases/download/v#{version}/my-budget-#{version}.dmg"
  appcast 'https://github.com/reZach/my-budget/releases.atom'
  name 'My Budget'
  homepage 'https://rezach.github.io/my-budget/'

  app 'My Budget.app'
end
