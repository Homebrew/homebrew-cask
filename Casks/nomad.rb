cask 'nomad' do
  version '0.3.2'
  sha256 '96808b9b8056490026327bdc6614e1813cee7d42978676e0024085709fd3fcac'

  # hashicorp.com/nomad was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/nomad/releases.atom',
          checkpoint: 'b65196b74ce907895afc4e8fc5bc4e4545d431edb2477cf743a21bb2b953b140'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'
  license :mpl

  binary 'nomad'
end
