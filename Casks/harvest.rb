class Harvest < Cask
  url 'https://www.getharvest.com/harvest/mac/Harvest.zip'
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  homepage 'http://www.getharvest.com/mac'
  version 'latest'
  sha256 :no_check
  link 'Harvest.app'
end
