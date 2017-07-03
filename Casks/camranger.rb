cask 'camranger' do
  version '1.9.4'
  sha256 'ea0af693a64c3e56e606bfd8f337e1292f69aed2fcb6d65a19557ea23105a5f3'

  url "https://www.camranger.com/downloadFiles/CamRanger_Mac_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'CamRanger'
  homepage 'https://camranger.com/mac-downloads/'

  app 'CamRanger.app'
end
