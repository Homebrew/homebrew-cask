class Dropzone < Cask
  version 'latest'
  sha256 :no_check

  url 'https://aptonic.com/dropzone3/latest'
  appcast 'https://aptonic.com/dropzone3/sparkle/updates.xml'
  homepage 'https://aptonic.com'

  app 'Dropzone 3.app'
end
