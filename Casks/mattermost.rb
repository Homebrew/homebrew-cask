cask 'mattermost' do
  version '4.3.2'
  sha256 '7757487d8268107511795b29482ef9508a585df34505c6e87f99614cad42e346'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
