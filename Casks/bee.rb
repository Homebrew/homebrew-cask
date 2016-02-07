cask 'bee' do
  version '2.3.1'
  sha256 'f3bda87326986dbcb5f997b43594b1f9034a8c38832797d4c9692a449d74049e'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://bee-app.s3.amazonaws.com/public/Bee-#{version}.zip"
  appcast 'http://www.neat.io/appcasts/bee-appcast.xml',
          checkpoint: 'f550d137cef78da4958b161cb153525b010f568b0f2b36c7f620a40b9bc89845'
  name 'Bee'
  homepage 'http://neat.io/bee/'
  license :commercial

  app 'Bee.app'
end
