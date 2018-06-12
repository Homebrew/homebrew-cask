cask 'namechanger' do
  version '3.3.2-6'
  sha256 'cd44006b4f223a5adb862d9143349261df5bb41dd5bff2ad5998f219dfa57b06'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  depends_on macos: '>= :lion'

  app 'NameChanger.app'
end
