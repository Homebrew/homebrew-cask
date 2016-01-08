cask 'namechanger' do
  version '3.1.0'
  sha256 'd48d92e5a103bf0afcb7c77a3d4277bc7de59eba48cfeca162bbcc752b4d32d5'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.gsub('.', '_')}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml',
          :sha256 => '49c3bd5a23dda0e2e8949cd32378dfe2bb05455bf0abab522e718af845451a13'
  name 'NameChanger'
  homepage 'https://www.mrrsoftware.com/MRRSoftware/NameChanger.html'
  license :gratis

  app 'NameChanger.app'
end
