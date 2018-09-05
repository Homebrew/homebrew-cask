cask 'namechanger' do
  version '3.3.3-7'
  sha256 'f0c0b43a67b74c9ce63ecac72749a16f362a34598ae46efda4ef6f4dcaf997a4'

  url "https://www.mrrsoftware.com/Downloads/NameChanger/Updates/NameChanger-#{version.dots_to_underscores}.zip"
  appcast 'https://mrrsoftware.com/Downloads/NameChanger/Updates/NameChangerSoftwareUpdates.xml'
  name 'NameChanger'
  homepage 'https://mrrsoftware.com/namechanger/'

  depends_on macos: '>= :lion'

  app 'NameChanger.app'
end
