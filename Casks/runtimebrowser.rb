cask 'runtimebrowser' do
  version :latest
  sha256 :no_check

  # seriot.ch is the official download host per the vendor homepage
  url 'http://seriot.ch/temp/runtimebrowser.zip'
  name 'RuntimeBrowser'
  homepage 'https://github.com/nst/RuntimeBrowser'
  license :oss

  app 'RuntimeBrowser.app'
end
