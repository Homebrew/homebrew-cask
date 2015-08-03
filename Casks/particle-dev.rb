cask :v1 => 'particle-dev' do
  version '0.0.24'
  sha256 'c93dc366bc782bc08317942a334a4b4092cca3917112ac8d3d85c031c3684712'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/spark/spark-dev/releases/download/v#{version}/particle-dev-mac.zip"
  appcast 'https://github.com/spark/spark-dev/releases.atom'
  name 'Particle Dev'
  homepage 'https://www.particle.io/dev'
  license :apache

  app 'Particle Dev.app'
end
