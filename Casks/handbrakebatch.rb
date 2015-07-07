cask :v1_1 => 'handbrakebatch' do
  version :latest
  sha256 :no_check

  url 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.zip'
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml'
  name 'HandBrakeBatch'
  homepage 'https://www.osomac.com/apps/osx/handbrake-batch/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HandBrakeBatch.app'

  caveats do
    discontinued
  end
end
