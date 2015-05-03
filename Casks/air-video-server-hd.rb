cask :v1 => 'air-video-server-hd' do
  version '2.1.3'
  sha256 '8b6b8bc849d88515f41ac2ae4d709079e1b30ed5f577d51ccf0e06f5dbb3ecda'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  name 'Air Video Server HD'
  homepage 'http://www.inmethod.com/airvideohd'
  license :gratis

  app 'Air Video Server HD.app'
end
