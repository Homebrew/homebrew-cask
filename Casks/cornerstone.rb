cask 'cornerstone' do
  version '3.1'
  sha256 'aa1f69944c672882fe0c62fe020872dc0f4421b4f415e5a0ef89f0735d9473a5'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed3.php',
          checkpoint: 'dd75dc6a03a111efc07a2a9e2faab8488da12cb7ce4bb5501a1529eb7927d3d6'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'

  app 'Cornerstone.app'
end
