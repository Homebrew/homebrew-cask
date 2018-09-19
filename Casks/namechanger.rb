cask 'namechanger' do
  version '3.4.0-9'
  sha256 '829c8661117814090f0f7cb0d91a5e0b41380e503c2cf0bef69123f6be124b59'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  depends_on macos: '>= :lion'

  app 'NameChanger.app'
end
