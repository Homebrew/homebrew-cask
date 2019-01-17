cask 'jetbrains-toolbox' do
  version '1.13.4698'
  sha256 'faea4fac08e043cacebf6ab23e3745ef021ec3a2a7b71ecfc9f743da47852ceb'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
