class AirVideoServerHd < Cask
  version '1.0.15'
  sha256 '06fa8089a3cc7ba7e6386aff9bab5f5827fc4add47ff4021e00d82b1d7a432b8'

  url "https://s3.amazonaws.com/AirVideoHD/Download/Air+Video+Server+HD+#{version}.dmg"
  homepage 'http://www.inmethod.com/airvideohd'

  link 'Air Video Server HD.app'
end
