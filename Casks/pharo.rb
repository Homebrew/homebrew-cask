cask 'pharo' do
  version '6.0'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://files.pharo.org/platform/Pharo#{version}-64-mac.zip"
  name 'Pharo'
  homepage 'https://pharo.org/'

  app "Pharo#{version}.app"
end
