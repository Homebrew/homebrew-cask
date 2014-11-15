cask :v1 => 'datagraph' do
  version :latest
  sha256 :no_check

  url 'http://www.visualdatatools.com/DataGraph/DataGraph.dmg'
  homepage 'http://www.visualdatatools.com/DataGraph/'
  license :unknown

  app 'DataGraph.app'
end
