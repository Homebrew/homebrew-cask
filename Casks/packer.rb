cask 'packer' do
  version '0.10.1'
  sha256 'fac621bf1fb43f0cbbe52481c8dfda2948895ad52e022e46f00bc75c07a4f181'

  # releases.hashicorp.com/packer was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/mitchellh/packer/releases.atom',
          checkpoint: 'e5561e741b39748bb7f33a90122f974d19281d00ad0c768abb58294df01187fe'
  name 'Packer'
  homepage 'https://www.packer.io/'
  license :oss

  binary 'packer'
end
