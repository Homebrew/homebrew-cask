cask 'poedit' do
  version '2.3.1'
  sha256 'a6e5314df29a1ac04a4798e28b74462b829c96f1d037058145083fea2a43e891'

  url "https://download.poedit.net/Poedit-#{version}.zip"
  appcast "https://poedit.net/updates_v#{version.major}/osx/appcast"
  name 'Poedit'
  homepage 'https://poedit.net/'

  app 'Poedit.app'
end
