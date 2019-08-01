cask 'namechanger' do
  version '3.4.2'
  sha256 '9da44a88bcb4ba10fc918671bd11237df8fea2469d3fb34bdf311435c0cf7ed3'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  auto_updates true

  app 'NameChanger.app'

  zap trash: [
               '~/Library/Application Support/NameChanger',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mrrsoftware.namechanger.sfl*',
               '~/Library/Preferences/com.mrrsoftware.NameChanger.plist',
             ]
end
