cask :v1 => 'particle-dev' do
  version :latest
  sha256 :no_check

  url 'https://s3.amazonaws.com/spark-website/particle-dev-mac.zip'
  name 'Particle Dev'
  homepage 'https://www.particle.io/dev'
  license :apache

  app 'Particle Dev.app'
end
