cask 'pretzel' do
  version '0.0.18'
  sha256 'fe5d9bc77531b56f0b7a072fde26ba5788a4a5ab85c41c2f5242d306067f18d1'

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast 'https://download.pretzel.rocks/latest-mac.json'
  name 'Pretzel'
  homepage 'https://www.pretzel.rocks/'

  app 'Pretzel.app'
end
