cask :v1 => 'amazon-zocalo' do
  version :latest
  sha256 :no_check

  url 'https://dpfrknqwmbop6.cloudfront.net/mac/Amazon%20Zocalo.pkg'
  name 'Amazon Zocalo'
  homepage 'http://aws.amazon.com/zocalo/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Amazon Zocalo.pkg'

  uninstall :pkgutil => 'com.amazon.aws.AmazonZocalo'
end
