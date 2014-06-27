class Freezer < Cask
  version 'latest'
  sha256 :no_check
  
  url 'http://download.mrgeckosmedia.com/Freezer.zip'
  appcast 'https://mrgeckosmedia.com/applications/appcast/Freezer'
  homepage 'https://mrgeckosmedia.com/applications/info/Freezer'

  link 'Freezer/Freezer.app'
end
