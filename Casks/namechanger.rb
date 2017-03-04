cask 'namechanger' do
  version '3.3.0'
  sha256 '77a328f2947cd01c37a9181556c9e9d044b131075e72b514af0d01f7da35188d'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: '00cc536c81895136ea548eed2cf5cc5236089e1026f0dd99244db6ef7a4d9737'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  app 'NameChanger.app'
end
