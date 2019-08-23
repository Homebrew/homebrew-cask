cask 'jetbrains-toolbox' do
  version '1.15.5796'
  sha256 '245672486029cfb665ed8f13bf18714f84b15d3deb95bdce025219cca9d2e94b'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
