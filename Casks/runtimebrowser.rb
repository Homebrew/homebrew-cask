cask 'runtimebrowser' do
  version :latest
  sha256 :no_check

  # seriot.ch was verified as official when first introduced to the cask
  url 'http://seriot.ch/temp/runtimebrowser.zip'
  name 'RuntimeBrowser'
  homepage 'https://github.com/nst/RuntimeBrowser'

  app 'RuntimeBrowser.app'
end
