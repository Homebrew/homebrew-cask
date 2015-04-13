cask :v1 => 'air-video-server-hd' do
  version '2.1.0'
  sha256 'f207935993cf42ba2e6e505ee597f0c64ef386c7ca7cea4197cd676734fbc287'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Air Video Server HD.app'
end
