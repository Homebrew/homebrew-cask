cask 'pharo' do
  version '4.0'
  sha256 :no_check # required as upstream package is updated in-place

  # pharo.org is the official download host per the vendor homepage
  url "http://files.pharo.org/platform/Pharo#{version}-mac.zip"
  name 'Pharo'
  homepage 'https://pharo.org'
  license :oss

  app "Pharo#{version}.app"
end
