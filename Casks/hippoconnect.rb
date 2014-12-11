cask :v1 => 'hippoconnect' do
  version :latest
  sha256 :no_check

  url 'http://hipporemote.com/HippoConnect/mac/HippoConnect.zip'
  homepage 'http://hipporemote.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'HippoConnect.app'
end
