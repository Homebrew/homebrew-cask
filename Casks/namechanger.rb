cask 'namechanger' do
  version '3.4.1'
  sha256 'a9fc2dcbde55c778ee5f12f86a2f0afe8da2a6bdddc79b87ce42e19ab86275f6'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  depends_on macos: '>= :lion'

  app 'NameChanger.app'
end
