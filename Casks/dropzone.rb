class Dropzone < Cask
  version 'latest'
  sha256 :no_check

  url 'http://aptonic.com/dropzone/latest'
  appcast 'http://aptonic.com/dropzone/sparkle/updates2.xml'
  homepage 'http://aptonic.com'

  link 'Dropzone.app'
end
