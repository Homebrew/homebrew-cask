cask :v1 => 'amazon-zocalo' do
  version :latest
  sha256 :no_check

  url 'https://dpfrknqwmbop6.cloudfront.net/mac/Amazon%20Zocalo.pkg'
  homepage 'http://aws.amazon.com/zocalo/'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Amazon Zocalo.pkg'

  uninstall :pkgutil => 'com.amazon.aws.AmazonZocalo'
end
