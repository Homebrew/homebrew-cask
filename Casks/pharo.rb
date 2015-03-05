cask :v1 => 'pharo' do
  version '3.0'
  sha256 'ae6461e44f768a2f04d7b1787edd2d770ad4e2e2cb5e1fe144d1f1b98ecb7114'

  # pharo.org is the official download host per the vendor homepage
  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  name 'Pharo'
  homepage 'http://www.pharo-project.org/home'
  license :oss

  app "Pharo#{version}.app"
end
