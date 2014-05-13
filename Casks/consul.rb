class Consul < Cask
  url 'https://dl.bintray.com/mitchellh/consul/0.2.0_darwin_amd64.zip'
  homepage 'http://www.consul.io/'
  version '0.2.0'
  sha256 '0a03a42fa3ea945d19152bc2429b4098a195a68f7a8f10a1b63e805f7f251fe9'
  binary 'consul'
  after_install do
    system '/bin/chmod', '755', "#{destination_path}/consul"
  end
end
