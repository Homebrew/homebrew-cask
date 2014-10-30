class Runtimebrowser < Cask
  version :latest
  sha256 :no_check

  url 'http://seriot.ch/temp/runtimebrowser.zip'
  homepage 'https://github.com/nst/RuntimeBrowser'
  license :oss

  app 'RuntimeBrowser.app'
end
