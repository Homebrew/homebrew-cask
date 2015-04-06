cask :v1 => 'pharo' do
  version '3.0'
  sha256 :no_check # required as upstream package is updated in-place

  # pharo.org is the official download host per the vendor homepage
  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  name 'Pharo'
  homepage 'http://www.pharo-project.org/home'
  license :oss

  app "Pharo#{version}.app"
end
