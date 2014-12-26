cask :v1 => 'hippoconnect' do
  version :latest
  sha256 :no_check

  url 'http://hipporemote.com/HippoConnect/mac/HippoConnect.zip'
  homepage 'http://hipporemote.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HippoConnect.app'
end
