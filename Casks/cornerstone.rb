cask 'cornerstone' do
  version '3.0.3'
  sha256 '23d5da55c4b17e90515b2af3b54b66bdca3752b4b5c4dc520752d27be90d41b5'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed3.php',
          checkpoint: 'edab413cebd5ccd982e9bf7b3482030264dab4528fe1c486468b010296b1ad06'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'

  app 'Cornerstone.app'
end
