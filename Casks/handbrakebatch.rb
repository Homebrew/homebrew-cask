class Handbrakebatch < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.zip'
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml'
  homepage 'http://www.osomac.com/apps/osx/handbrake-batch/'

  link 'HandBrakeBatch.app'
end
