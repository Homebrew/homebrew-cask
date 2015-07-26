cask :v1 => 'koko' do
  version '0.1.5'
  sha256 '1a11817863d21039f02837567112d5e97a5edf6e08f214255ca05ddbf8e80766'

  url "https://github.com/noraesae/koko/releases/download/v#{version}/koko-mac.zip"
  appcast 'https://github.com/noraesae/koko/releases.atom'
  name 'Koko'
  homepage 'https://github.com/noraesae/koko'
  license :mit

  app 'Koko.app'
end
