class FramerStudio < Cask
  version '1.9.0'
  sha256 'b6101b7a69b9af39b15a977e66366c5b1eda2c1e66cac49604434ee8b5fb98ba'

  url "http://studio.update.framerjs.com/static/downloads/Framer%20Studio-#{version}.zip"
  homepage 'http://framerjs.com/'
  license :unknown

  app 'Framer Studio.app'
end
