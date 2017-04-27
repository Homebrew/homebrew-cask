cask 'consul-web-ui' do
  version '0.8.1'
  sha256 '0caff8d54a80ff7bc5baec39b0eda19a9652df992db324026e361fa31183749f'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '471fa470266be3f2f03cf06a74a503e0cde88430be2407a832db6f60a548fa60'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
