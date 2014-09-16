class AmazonZocalo < Cask
  version 'latest'
  sha256 :no_check

  url 'https://dpfrknqwmbop6.cloudfront.net/mac/Amazon%20Zocalo.pkg'
  homepage 'http://aws.amazon.com/zocalo/'

  pkg 'Amazon Zocalo.pkg'
  uninstall :pkgutil => 'com.amazon.aws.AmazonZocalo'
end
