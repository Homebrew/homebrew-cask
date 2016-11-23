cask 'kimono' do
  version '1.0.5'
  sha256 '30c6b83661573e10e1afabad0ef7f5c9ead60c4b2cedd4454160736c6c91a55f'

  # s3.amazonaws.com/kimono-desktop-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/kimono-desktop-releases/v#{version}/Kimono.app.zip"
  name 'Kimono'
  homepage 'https://www.kimonolabs.com/'

  app 'Kimono.app'
end
