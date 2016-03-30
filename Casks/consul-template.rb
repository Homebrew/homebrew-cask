cask 'consul-template' do
  version '0.14.0'
  sha256 '37fc8aca13020180b367bb1d277242adb11526394f4f0ce1c3d5f0ec8d2071d8'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul-template/#{version}/consul-template_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/consul-template/releases.atom',
          checkpoint: '63a29ae5df150b57cc5b22c63fb96a1ff41f1b85ce156121534f382e4900978b'
  name 'Consul Template'
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary 'consul-template'
end
