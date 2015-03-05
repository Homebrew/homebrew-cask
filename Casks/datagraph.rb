cask :v1 => 'datagraph' do
  version :latest
  sha256 :no_check

  url 'http://www.visualdatatools.com/DataGraph/DataGraph.dmg'
  name 'DataGraph'
  homepage 'http://www.visualdatatools.com/DataGraph/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DataGraph.app'
end
