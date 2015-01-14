cask :v1 => 'synthesia' do
  version '10.1'
  sha256 '394418e9a32cd2dc53858f8721c81832be3ca460c0cf210bd8e179f1d6b2ba1d'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  homepage 'http://www.synthesiagame.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Synthesia.app'
  app 'SynthesiaConfig.app'
end
