cask :v1 => 'bezel' do
  version '1.2'
  sha256 'cf9a9fbd2049723675e354fd869607a9f828a38b992d8d45783a6c89772192b9'

  url "http://infinitapps.com/files/Bezel-#{version}.zip"
  appcast 'http://infinitapps.com/files/bezel-appcast.xml',
          :sha256 => 'b0551759a0758e9707cb8388f6b7c29c70763fb26c0dd268db33293683db6a96'
  name 'bezel'
  homepage 'http://infinitapps.com/bezel/'
  license :gratis

  app "Bezel #{version}/Bezel.app"
end
