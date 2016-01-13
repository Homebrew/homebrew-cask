cask 'bee' do
  version '2.3'
  sha256 '10a414e71ec374efa0a3315fa498288e215156a4dcc3e3d1f3cf13f9700534a6'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          :sha256 => '52606d7d21c26bd9a22f9c1af194d9291cec9e6f2b2a907ebdd88d7d9eb8faf2'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
