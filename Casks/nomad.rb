cask 'nomad' do
  version '0.3.1'
  sha256 'c300a3b5c195fbccf26dfcdb756b4c953ca0e5e566a41fce1d10ef1947ec4279'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
