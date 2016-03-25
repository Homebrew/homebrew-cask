cask 'nomad' do
  version '0.3.1'
  sha256 'c300a3b5c195fbccf26dfcdb756b4c953ca0e5e566a41fce1d10ef1947ec4279'

  # hashicorp.com/nomad was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/nomad/releases.atom',
          checkpoint: '7dbb430f88706ed39867506dc3da084838475e27de7570f524a202b3f73fa4c1'
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
