class Mixture < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://s3.amazonaws.com/mixture-mixed-app/mac/Mixture.zip'
  appcast 'https://s3.amazonaws.com/mixture-mixed-app/mac/appcast.xml'
  homepage 'http://mixture.io/'

  link 'Mixture.app'
end
