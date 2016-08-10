cask 'nomad' do
  version '0.4.0'
  sha256 '2f6bff636ae48343017e0e5edd4371f7abe434d1f70d95d7e28f08490c978c40'

  # hashicorp.com/nomad was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/nomad/#{version}/nomad_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/nomad/releases.atom',
          checkpoint: '5ecc997a7db0397f1f95369a8272e5d6376764efa7834a81639071865aee82ff'
  name 'Nomad'
  homepage 'https://www.nomadproject.io/'
  license :mpl

  binary 'nomad'
end
