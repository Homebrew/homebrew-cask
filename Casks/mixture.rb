class Mixture < Cask
  url 'https://s3.amazonaws.com/mixture-mixed-app/mac/Mixture.zip'
  appcast 'https://s3.amazonaws.com/mixture-mixed-app/mac/appcast.xml'
  homepage 'http://mixture.io/'
  version 'latest'
  sha256 :no_check
  link 'Mixture.app'
end
