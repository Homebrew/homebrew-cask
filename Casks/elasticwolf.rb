cask 'elasticwolf' do
  version '5.1.6'
  sha256 '32eccff8e2cff1187fbf4b8c614e61056ae9c371ebdba3174e021b413b973542'

  # amazonaws.com/elasticwolf was verified as official when first introduced to the cask
  url "https://s3-us-gov-west-1.amazonaws.com/elasticwolf/ElasticWolf-osx-#{version}.zip"
  name 'AWS ElasticWolf Client Console'
  homepage 'https://aws.amazon.com/developertools/9313598265692691'

  app 'ElasticWolf.app'
end
