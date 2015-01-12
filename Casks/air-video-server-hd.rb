cask :v1 => 'air-video-server-hd' do
  version '2.0.3-beta1'
  sha256 'ced6bf6d373f3b9a25444687d80e81064673542107e9bda790ecb89081d68c71'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Air Video Server HD.app'
end
