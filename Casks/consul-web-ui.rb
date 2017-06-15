cask 'consul-web-ui' do
  version '0.8.4'
  sha256 '7a49924a872205002b2bf72af8c82d5560d4a7f4a58b2f65ee284dd254ebd063'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '22fc8401281f172bab0a46da05282477b7ecd237bdd9d34eabf94ca2aad84645'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
