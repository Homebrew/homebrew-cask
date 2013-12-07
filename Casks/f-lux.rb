class FLux < Cask
  url 'https://justgetflux.com/mac/Flux.zip'
  homepage 'http://justgetflux.com'
  version 'latest'
  no_checksum
  link 'Flux.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system 'defaults write org.herf.Flux moveToApplicationsFolderAlertSuppress -int 1'
  end
end
