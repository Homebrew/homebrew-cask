cask :v1 => 'nomad' do
  version '0.2.0'
  sha256 '1606cc268298852b0e413d3799843597a9aa0c47c53313ef2a523cc595ccb2f1'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
