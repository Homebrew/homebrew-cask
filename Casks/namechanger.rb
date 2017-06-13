cask 'namechanger' do
  version '3.3.0'
  sha256 '77a328f2947cd01c37a9181556c9e9d044b131075e72b514af0d01f7da35188d'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: 'bc5602d20c7b88ad517282a8d1ae96327dd2c074fafd9ba36b76679c52b56e07'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  app 'NameChanger.app'
end
