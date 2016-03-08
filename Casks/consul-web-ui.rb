cask 'consul-web-ui' do
  version '0.6.1'
  sha256 'afccdd540b166b778c7c0483becc5e282bbbb1ee52335bfe94bf757df8c55efc'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'
  license :mpl

  depends_on cask: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
