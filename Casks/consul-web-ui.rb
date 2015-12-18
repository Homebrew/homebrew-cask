cask 'consul-web-ui' do
  version '0.6.0'
  sha256 '73c5e7ee50bb4a2efe56331d330e6d7dbf46335599c028344ccc4031c0c32eb0'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'
  license :mpl

  stage_only true

  depends_on :cask => 'consul'
  caveats do
    "Invoke consul with '-ui-dir #{staged_path}/dist'"
  end
end
