class Harvest < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.getharvest.com/harvest/mac/Harvest.zip'
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  homepage 'http://www.getharvest.com/mac'

  link 'Harvest.app'
end
