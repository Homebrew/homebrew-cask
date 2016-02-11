cask 'consul' do
  version '0.6.3'
  sha256 '6dff4ffc61d66aacd627a176737b8725624718a9e68cc81460a3df9b241c7932'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: 'd38501c339d670687ee0932f150bb1fce20249745583dba1b3fc4a39623fcd03'
  name 'Consul'
  homepage 'https://www.consul.io/'
  license :mpl

  binary 'consul'
end
