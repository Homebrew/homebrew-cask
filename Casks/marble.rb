cask 'marble' do
  version '1.5.0'
  sha256 '6d1bf3e02c34ef0df0d5d0311d580bfae1d5259e3db45036163a5330dc139c04'

  url "https://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.dmg"
  appcast 'https://marble.kde.org/install.php',
          checkpoint: '1ce02722daa1d15697f044f62f454f346371d1b224e75e5454bc3a0a5d7a241d'
  name 'Marble'
  homepage 'https://marble.kde.org/'

  app 'Marble.app'
end
