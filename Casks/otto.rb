cask 'otto' do
  version '0.2.0'
  sha256 '411d99f1e682ca8d3c817104e3f4f215a7bb65016124c10e4333682c752ba09e'

  # hashicorp.com is the official download host per the vendor homepage
  url "https://releases.hashicorp.com/otto/#{version}/otto_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/otto/releases.atom',
          checkpoint: '046259c2cdb9af18491ccd60ad06023717ef958404b77a4845138e75cb053fe7'
  name 'Otto'
  homepage 'https://www.ottoproject.io/'
  license :mpl

  binary 'otto'
end
