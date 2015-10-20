cask :v1 => 'chromecast' do
  version '1.5.0.1773'
  sha256 '79793af7611201768a2b23d93983837229458da3ff9336c6918601a9439f533e'

  # google.com is the official download host per the vendor homepage
  url "https://dl.google.com/chromecast/setup/mac/chromecast-setup.#{version}.dmg"
  name 'Chromecast'
  homepage 'https://chromecast.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Chromecast.app'
end
