cask 'hippoconnect' do
  version :latest
  sha256 :no_check

  url 'http://hipporemote.com/HippoConnect/mac/HippoConnect.zip'
  name 'HippoConnect'
  homepage 'http://hipporemote.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HippoConnect.app'
end
