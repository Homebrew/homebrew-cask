class FLux < Cask
  url 'https://justgetflux.com/mac/Flux.zip'
  homepage 'http://justgetflux.com'
  version 'latest'
  no_checksum
  link 'Flux.app'

  #Prevent f.lux from asking the user whether he wants the app bundle moved to /Applications
  system 'defaults write org.herf.Flux moveToApplicationsFolderAlertSuppress -int 1'
end
