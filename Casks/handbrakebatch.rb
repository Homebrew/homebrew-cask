cask :v1_1 => 'handbrakebatch' do
  version '2.25'
  sha256 'd5f57d1a7ef9a85b32c800aa8c94ea73420940b6a9e463561df343fe82c64c6c'

  url "https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch_#{version}.zip"
  appcast 'https://www.osomac.com/appcasts/handbrakebatch/HandBrakeBatch.xml'
  name 'HandBrakeBatch'
  homepage 'https://www.osomac.com/apps/osx/handbrake-batch/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'HandBrakeBatch.app'

  caveats do
    discontinued
  end
end
