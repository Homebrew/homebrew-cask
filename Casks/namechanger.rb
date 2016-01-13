cask 'namechanger' do
  version '3.1.0'
  sha256 'd48d92e5a103bf0afcb7c77a3d4277bc7de59eba48cfeca162bbcc752b4d32d5'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => 'aee6a4f9a3f496fe96f63509377655a5e48551106c34afbabea1e4e47ec65c66'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'
  license :gratis

  app 'NameChanger.app'
end
