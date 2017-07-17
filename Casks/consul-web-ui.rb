cask 'consul-web-ui' do
  version '0.8.5'
  sha256 '4f7b90d8159480daeff6f3673f56fc75c00e4fd05de9c5c6d22a4af2fbc78368'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '63c6dc0162381b6e93453e2140df07e88e98c1da12c5052a6c6cf98865f557f8'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
