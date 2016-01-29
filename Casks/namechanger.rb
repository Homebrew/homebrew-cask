cask 'namechanger' do
  version '3.1.1'
  sha256 '5ce678736e3e6fd2eb33bf2a9901e582b53612b5705ac7882ec86bc5a4a188cb'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: '29fac0db826f5168a5171a31a8c32b6d714e5b9673b03dab21325325ee1b18c2'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'
  license :gratis

  app 'NameChanger.app'
end
