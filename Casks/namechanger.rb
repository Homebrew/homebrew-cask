cask 'namechanger' do
  version '3.2.1'
  sha256 '3866310c60ed224d15d8cd6de864978e11d84d203e2bae6b9db4d77a46d4420f'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          checkpoint: '427e9fe31bbd34d9ee9d6fb064f6d6c10b0634ec8a7a18ddfc8453b0498f2496'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  app 'NameChanger.app'
end
