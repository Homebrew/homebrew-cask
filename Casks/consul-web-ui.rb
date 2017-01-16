cask 'consul-web-ui' do
  version '0.7.2'
  sha256 'c9d2a6e1d1bb6243e5fd23338d92f5c71cdf0a4077f7fcc95fd81800fa1f42a9'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '13dd5b86c555de073de8513ce88735d28b8f057d8727c9208cd3814310a6e008'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
