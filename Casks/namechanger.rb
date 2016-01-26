cask 'namechanger' do
  version '3.1.0'
  sha256 'd48d92e5a103bf0afcb7c77a3d4277bc7de59eba48cfeca162bbcc752b4d32d5'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: '956049f10a3580026ae9185c2f2ac59c04ed8035b6a06e4df868f6027ca86ef8'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'
  license :gratis

  app 'NameChanger.app'
end
