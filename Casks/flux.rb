class Flux < Cask
  version :latest
  sha256 :no_check

  url 'https://justgetflux.com/mac/Flux.zip'
  appcast 'https://justgetflux.com/mac/macflux.xml'
  homepage 'http://justgetflux.com'
  license :unknown

  app 'Flux.app'

  postflight do
    # Don't ask to move the app bundle to /Applications
    system '/usr/bin/defaults', 'write', 'org.herf.Flux', 'moveToApplicationsFolderAlertSuppress', '-bool', 'true'
  end
  zap :delete => '~/Library/Preferences/org.herf.Flux.plist'
end
