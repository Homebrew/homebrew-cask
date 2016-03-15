cask 'packer' do
  version '0.10.0'
  sha256 'cb1d9768306466d566abc79d83911983ace6a9a6c0a6657dc7eaab03cabd2e21'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_darwin_amd64.zip"
  name 'Packer'
  homepage 'https://www.packer.io/'
  license :oss

  binary 'packer'
end
