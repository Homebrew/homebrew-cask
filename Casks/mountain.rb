class Mountain < Cask
  version 'latest'
  sha256 :no_check

  url 'http://appgineers.de/mountain/files/Mountain.zip'
  appcast 'http://appgineers.de/mountain/files/mountaincast.xml'
  homepage 'http://appgineers.de/mountain/'

  link 'Mountain.app'
end
