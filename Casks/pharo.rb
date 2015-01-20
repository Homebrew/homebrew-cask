cask :v1 => 'pharo' do
  version '3.0'
  sha256 'a13577159336d3de7e71d71c0e0f58985060d2455bc8d40d501c81e97a75b5e7'

  # pharo.org is the official download host per the vendor homepage
  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  name 'Pharo'
  homepage 'http://www.pharo-project.org/home'
  license :oss

  app "Pharo#{version}.app"
end
