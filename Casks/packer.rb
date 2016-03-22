cask 'packer' do
  version '0.10.0'
  sha256 'cb1d9768306466d566abc79d83911983ace6a9a6c0a6657dc7eaab03cabd2e21'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/mitchellh/packer/releases.atom',
          checkpoint: 'e5561e741b39748bb7f33a90122f974d19281d00ad0c768abb58294df01187fe'
  name 'Packer'
  homepage 'https://www.packer.io/'
  license :oss

  binary 'packer'
end
