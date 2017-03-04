cask 'particle-dev' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/spark-website was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/spark-website/particle-dev-mac.zip'
  name 'Particle Dev'
  homepage 'https://www.particle.io/products/development-tools/particle-desktop-ide'

  app 'Particle Dev.app'

  zap delete: [
                '~/.particle',
                '~/.particledev',
              ]
end
