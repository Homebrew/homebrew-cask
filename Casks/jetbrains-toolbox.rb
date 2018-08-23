cask 'jetbrains-toolbox' do
  version '1.11.4231'
  sha256 '0aabedd2e88f71cb65d7c803148a956a8890bbf0035a67212dbbdb5e96a310ae'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
