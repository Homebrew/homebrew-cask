cask 'consul-web-ui' do
  version '0.7.1'
  sha256 '1b793c60e1af24cc470421d0411e13748f451b51d8a6ed5fcabc8d00bfb84264'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '38ef0f44bc4072414cd2a95681f98bf84f2f14959fa505d4c71a86ccfb545653'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on cask: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
