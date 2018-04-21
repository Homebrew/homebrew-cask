cask 'namechanger' do
  version '3.3.1'
  sha256 'd00f9d9eaaa9d228f686dc313e9c5f8978d2d35fc9e598d759e8a2c9ca993198'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: '3caded5e8f5c07e6ec260322176151019a091a429d46af9ea3230ab00b6d13cd'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  app 'NameChanger.app'
end
