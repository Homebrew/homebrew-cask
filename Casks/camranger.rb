cask 'camranger' do
  version '1.9.3'
  sha256 'b8483e82f7d77557be54a7801775671956a93bff5140d7f65a11cfd471ea5cb6'

  url "http://www.camranger.com/downloadFiles/CamRanger_Mac_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'CamRanger'
  homepage 'http://camranger.com/mac-downloads/'

  app 'CamRanger.app'
end
