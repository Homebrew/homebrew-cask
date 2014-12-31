cask :v1 => 'synthesia' do
  version '10.0'
  sha256 '741df1e7c4ae014e1c01a9d3d3b3c1e3b619154aac0fc26e809e442713075c6b'

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  homepage 'http://www.synthesiagame.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Synthesia.app'
  app 'SynthesiaConfig.app'
end
