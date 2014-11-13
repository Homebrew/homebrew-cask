cask :v1 => 'pharo' do
  version '3.0'
  sha256 'a13577159336d3de7e71d71c0e0f58985060d2455bc8d40d501c81e97a75b5e7'

  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  homepage 'http://www.pharo-project.org/home'
  license :unknown

  app "Pharo#{version}.app"
end
