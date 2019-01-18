cask 'jetbrains-toolbox' do
  version '1.13.4733'
  sha256 '5b1f65e2d8f85554556e60798d4c1884ab622547ff71266225f43c8314719783'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
