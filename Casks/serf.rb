cask 'serf' do
  version '0.7.0'
  sha256 '30ab3f2fe65cbef0ce1cefa27c7aa27043fc3634c52a2f46d8921964b1ab2380'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/serf/#{version}/serf_#{version}_darwin_amd64.zip"
  name 'Serf'
  homepage 'https://www.serfdom.io/'
  license :mpl

  binary 'serf'
end
