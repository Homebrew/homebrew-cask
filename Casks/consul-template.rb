cask 'consul-template' do
  version '0.13.0'
  sha256 'ea7ec46b5922f497b5ffea8a7de2eb33268fc7ff18bd20e1a35af9334c98b5b9'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom',
          checkpoint: 'aeafcff96a05d8942b9833affb39ca70f59b1db0393c13de16542c84214887b0'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary 'consul-template'
end
