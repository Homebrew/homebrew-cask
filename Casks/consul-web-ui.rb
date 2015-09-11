cask :v1 => 'consul-web-ui' do
  version '0.5.2'
  sha256 'ad883aa52e1c0136ab1492bbcedad1210235f26d59719fb6de3ef6464f1ff3b1'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/consul/#{version}_web_ui.zip"
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'
  license :mpl

  stage_only true

  depends_on :cask => 'consul'
  caveats do
    "Invoke consul with '-ui-dir #{staged_path}/dist'"
  end
end
