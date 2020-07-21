cask 'poedit' do
  version '2.4'
  sha256 'e2a9adcab58ceef77b30ca2088fc98e34cb0287e47753e055e7f9c218e572627'

  url "https://download.poedit.net/Poedit-#{version}.zip"
  appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
