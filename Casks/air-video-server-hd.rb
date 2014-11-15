cask :v1 => 'air-video-server-hd' do
  version '2.0.2'
  sha256 'b0a0ef30fcb19de24051fe32e5de0eb601d65664fe71a8cfb4e3243d49c1e1d5'

  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  homepage 'http://www.inmethod.com/airvideohd'
  license :unknown

  app 'Air Video Server HD.app'
end
