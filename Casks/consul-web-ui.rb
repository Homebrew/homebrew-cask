cask 'consul-web-ui' do
  version '0.8.3'
  sha256 '9212c44c3ee4acaeca88d794225a2858a558be531a3cd44c741990c4493d6f12'

  # hashicorp.com was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/consul/#{version}/consul_#{version}_web_ui.zip"
  appcast 'https://github.com/hashicorp/consul/releases.atom',
          checkpoint: '19d042490f2195267f70b959ab2ebb811f007c1ae67d282cda105c4dc2371fa7'
  name 'Consul Web UI'
  homepage 'https://www.consul.io/intro/getting-started/ui.html'

  depends_on formula: 'consul'

  stage_only true

  caveats do
    "Invoke consul with '-ui-dir #{staged_path}'"
  end
end
