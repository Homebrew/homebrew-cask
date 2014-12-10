cask :v1 => 'jbidwatcher' do
  version '2.5.6'
  sha256 '659de073d9e0d71fa86e21db1524b7df57b36ff7826600a01ed93da6df5f5c9f'

  url "https://www.jbidwatcher.com/download/JBidwatcher-#{version}.dmg"
  homepage 'http://www.jbidwatcher.com'
  license :unknown    # todo: improve this machine-generated value

  app 'JBidwatcher.app'
end
