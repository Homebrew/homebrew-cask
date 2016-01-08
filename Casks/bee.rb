cask 'bee' do
  version '2.3'
  sha256 '10a414e71ec374efa0a3315fa498288e215156a4dcc3e3d1f3cf13f9700534a6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          :sha256 => 'c7ef88fb7210df4c01a77ef478cd7a59908941031bf711cb35bca98910be980b'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
