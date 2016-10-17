cask 'poedit' do
  if MacOS.version <= :snow_leopard
    version '1.5.7'
    sha256 '2017538011239f07924b709e4c13aa3fd7f83a96f76208b8b746fcee29251caf'

    url "https://poedit.net/dl/poedit-#{version}.dmg"
  else
    version '1.8.10'
    sha256 '8239a1afd3e34a54d28110a8e0acdb426baba0386dc227f116261da9a01bcb2e'

    url "https://download.poedit.net/Poedit-#{version}.zip"
    appcast 'https://poedit.net/updates/osx/appcast',
            checkpoint: '3230d40aeffa024e986abb2aef0e9759976a1397b27596b0f5d2eec43d6386b2'
  end

  name 'Poedit'
  homepage 'https://www.poedit.net/'

  app 'Poedit.app'

  postflight do
    suppress_move_to_applications
  end
end
