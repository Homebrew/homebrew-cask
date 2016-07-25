cask 'consul-template' do
  version '0.16.0-rc1'
  sha256 'ed4615ef56f3a139fd98afe93d8f7c48e850b76c763bdfa4f9c21269d660864d'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom',
          checkpoint: '2ab98eaf2dadc2f79ca80be77ff3af8e9e5a013561a3e34d07396fe890866122'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary 'consul-template'
end
