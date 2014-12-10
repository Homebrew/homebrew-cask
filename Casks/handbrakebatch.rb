cask :v1 => 'handbrakebatch' do
  version :latest
  sha256 :no_check

  url 'http://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.zip'
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml'
  homepage 'http://www.osomac.com/apps/osx/handbrake-batch/'
  license :unknown    # todo: improve this machine-generated value

  app 'HandBrakeBatch.app'
end
