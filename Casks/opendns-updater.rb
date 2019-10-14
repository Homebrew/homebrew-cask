cask 'opendns-updater' do
  version '3.0'
  sha256 '64ad7b55cc8a62739815a806c077df0751ecbbc6c4a71c01792c2f71dc7fd8cc'

  url 'https://www.opendns.com/download/mac/'
  appcast 'https://opendnsupdate.appspot.com/macupdatecheck/ipupdater/AppCast.xml'
  name 'OpenDNS Updater'
  homepage 'https://support.opendns.com/hc/en-us/articles/227987867'

  app 'OpenDNS Updater.app'
end
