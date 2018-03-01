cask 'pretzel' do
  version '0.0.18'
  sha256 'fe5d9bc77531b56f0b7a072fde26ba5788a4a5ab85c41c2f5242d306067f18d1'

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast 'https://download.pretzel.rocks/latest-mac.json',
          checkpoint: '9fe404e57f4f357d8d68bf892ca47ca335f4e6fddbdc844d6bd5f9da70e8d5cf'
  name 'Pretzel'
  homepage 'https://www.pretzel.rocks/'

  app 'Pretzel.app'
end
