cask 'otto' do
  version '0.2.0'
  sha256 '411d99f1e682ca8d3c817104e3f4f215a7bb65016124c10e4333682c752ba09e'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/otto/#{version}/otto_#{version}_darwin_amd64.zip"
  name 'Otto'
  homepage 'https://www.ottoproject.io/'
  license :mpl

  binary 'otto'
end
