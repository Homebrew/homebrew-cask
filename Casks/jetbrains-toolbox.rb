cask 'jetbrains-toolbox' do
  version '1.7.3593'
  sha256 '7ce704754c7eddee812c138146714ad03b3e0db75d798b7f3513440d7c1b8e9d'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '5eb3acc1031e3ee96c81fe5ffd7ec58d59d52f037286c35f7120dfe81fc51adb'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
