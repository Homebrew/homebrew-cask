class Flux < Cask
  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml'
  homepage 'http://justgetflux.com'
  version 'latest'
  sha256 :no_check
  link 'Flux.app'

  after_install do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'org.herf.Flux', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
end
