cask 'consul-web-ui' do
  version '0.7.5'
  sha256 'a7803e7ba2872035a7e1db35c8a2186ad238bf0f90eb441ee4663a872b598af4'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '0f2cef41051eb9d83cdd101adef44d1e23146cbdeb306a51d3b52807fd9d0f3c'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
