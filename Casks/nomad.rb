cask 'nomad' do
  version '0.2.1'
  sha256 '7f40f24c7c386bff4f97fad89c258ca7549d9629260d319a71a27fbb9e9ba31f'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  name 'Nomad'
  homepage 'https://nomadproject.io/'
  license :mpl

  binary 'nomad'
end
