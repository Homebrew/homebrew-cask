cask 'pharo' do
  version '7.0'
  sha256 :no_check # required as upstream package is updated in-place

  url "https://files.pharo.org/get-files/#{version.no_dots}/pharo64-mac-stable.zip"
  name 'Pharo'
  homepage 'https://pharo.org/'

  app 'Pharo.app'
end
