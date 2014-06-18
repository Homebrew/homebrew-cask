class Mountain < Cask
  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml'
  homepage 'http://appgineers.de/mountain/'
  version 'latest'
  sha256 :no_check
  link 'Mountain.app'
end
