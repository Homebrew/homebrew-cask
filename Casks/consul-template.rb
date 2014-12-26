cask :v1 => 'consul-template' do
  version '0.5.0'
  sha256 '4b68340ce69a87e28714223ae7ff78be94ac3dcea93f42d55657d18a9f749660'

  url "https://github.com/hashicorp/consul-template/releases/download/v#{version}/consul-template_#{version}_darwin_amd64.tar.gz"
  homepage 'https://github.com/hashicorp/consul-template'
  license :mpl

  binary "consul-template_#{version}_darwin_amd64/consul-template"
end
