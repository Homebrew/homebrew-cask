cask 'datagraph' do
  version :latest
  sha256 :no_check

  url 'http://www.visualdatatools.com/DataGraph/DataGraph.dmg'
  name 'DataGraph'
  homepage 'http://www.visualdatatools.com/DataGraph/'
  license :commercial

  app 'DataGraph.app'
end
