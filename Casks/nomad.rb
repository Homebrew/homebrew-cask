cask :v1 => 'nomad' do
  version '0.1.0'
  sha256 'bea96ca7fcb4e6ce446ab86c26770f4b2dbaf936e299355831e9a383d67b4849'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/nomad/nomad_#{version}_darwin_amd64.zip"
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
