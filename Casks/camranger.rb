cask 'camranger' do
  version '2.0.1'
  sha256 '28203ed3006a471fee52a3a83a37f9e56278bcce49f8270242819d2991c89932'

  url "https://www.camranger.com/downloadFiles/CamRanger_Mac_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'CamRanger'
  homepage 'http://camranger.com/mac-downloads/'

  depends_on macos: '>= :mountain_lion'

  app 'CamRanger.app'
end
