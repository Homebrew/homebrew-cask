cask :v1 => 'chromecast' do
  version '1.5.0.1773'
  sha256 '79793af7611201768a2b23d93983837229458da3ff9336c6918601a9439f533e'

  url "https://dl.google.com/chromecast/setup/mac/chromecast-setup.#{version}.dmg"
  homepage 'http://chromecast.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Chromecast.app'
end
