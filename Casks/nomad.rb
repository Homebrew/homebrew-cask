cask :v1 => 'nomad' do
  version '0.1.2'
  sha256 '8fcff1029c6cc9bf24ee441d749ef1039a6132e62ef486561a8a8d9e6e519fbf'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/nomad/nomad_#{version}_darwin_amd64.zip"
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
