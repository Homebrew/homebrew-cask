cask 'camranger' do
  version '2.0.2'
  sha256 'fc2d10db1d9e57b8125146625ff399c96aa91f7190b5217a2b7cc08f2e460fc5'

  url "https://www.camranger.com/downloadFiles/CamRanger_Mac_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'CamRanger'
  homepage 'https://camranger.com/mac-downloads/'

  app 'CamRanger.app'
end
