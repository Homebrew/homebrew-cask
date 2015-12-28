cask 'scenery' do
  version '1.0.1'
  sha256 '239fb51d54104f6e95a58bfcac9bd380eb67ff1c5bc53ed5312b176ef8a09a6a'

  # cloudfront is the official download host per the vendor homepage
  url 'https://dl0tgz6ee3upo.cloudfront.net/production/app/builds/003/773/449/original/c4608811f4b3562fef6f61c199bc3475/Scenery.app.zip'
  name 'Scenery'
  homepage 'https://www.getscenery.com/'
  license :gratis

  app 'Scenery.app'
end
