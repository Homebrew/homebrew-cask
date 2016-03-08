cask 'packer' do
  version '0.9.0'
  sha256 'bd5f8ce38ceb866c3f1db2eb3d51091184dd021dd785d05bb47177b223fea9df'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/packer/#{version}/packer_#{version}_darwin_amd64.zip"
  name 'Packer'
  homepage 'https://www.packer.io/'
  license :oss

  binary 'packer'
end
