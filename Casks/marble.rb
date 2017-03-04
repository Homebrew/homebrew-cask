cask 'marble' do
  version '1.5.0'
  sha256 '6d1bf3e02c34ef0df0d5d0311d580bfae1d5259e3db45036163a5330dc139c04'

  url "https://files.kde.org/marble/downloads/MacOSX/Marble-#{version}.dmg"
  appcast 'https://marble.kde.org/install.php',
          checkpoint: '2e380a4e00b3dd33424238e3f263c594baa4b5baf4c26ef51141bd9f94cf3fce'
  name 'Marble'
  homepage 'https://marble.kde.org/'

  app 'Marble.app'
end
