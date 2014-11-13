cask :v1 => 'hippoconnect' do
  version :latest
  sha256 :no_check

  url 'http://hipporemote.com/HippoConnect/mac/HippoConnect.zip'
  homepage 'http://hipporemote.com/'
  license :unknown

  app 'HippoConnect.app'
end
