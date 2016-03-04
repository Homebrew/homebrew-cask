cask 'consul-template' do
  version '0.12.1'
  sha256 '9ccdfd5a99ed69cd694bbaa10ff45d1a660eda2d74ba010dc0400641959e5e73'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom',
          checkpoint: 'aeafcff96a05d8942b9833affb39ca70f59b1db0393c13de16542c84214887b0'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary 'consul-template'
end
