cask 'camranger' do
  version '1.9.7'
  sha256 '956db2fd76ad58946798b0c067a86fa6fd81e4d3bcfbd2f182a357a4ec094a1c'

  url "https://www.camranger.com/downloadFiles/CamRanger_Mac_#{version.dots_to_underscores}.dmg",
      user_agent: :fake
  name 'CamRanger'
  homepage 'http://camranger.com/mac-downloads/'

  app 'CamRanger.app'
end
