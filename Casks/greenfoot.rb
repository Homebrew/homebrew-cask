cask 'greenfoot' do
  version '3.6.0'
  sha256 '575413dd4d1c7a0e4e97c39192478e98ca944cbad9684c161e57191204dd1ebe'

  url "https://www.greenfoot.org/download/files/Greenfoot-mac-#{version.no_dots}.zip"
  appcast 'https://www.greenfoot.org/download'
  name 'Greenfoot'
  homepage 'https://www.greenfoot.org/home'

  app "Greenfoot #{version}/Greenfoot.app"
end
