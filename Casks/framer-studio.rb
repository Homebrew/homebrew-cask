cask :v1 => 'framer-studio' do
  version '1.9.9'
  sha256 '87ef1a7cf363e772a1c0cbc2dd6ca6dceb41d677b547b0cac28a8c982557650f'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  homepage 'http://framerjs.com/'
  license :unknown

  app 'Framer Studio.app'
end
