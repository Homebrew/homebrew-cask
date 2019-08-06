cask 'jetbrains-toolbox' do
  version '1.15.5776'
  sha256 'c6c5f0f5513825caca8e53ca9b8a32ffce7153a36b55ae334af2764606a48338'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
