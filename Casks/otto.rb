cask :v1 => 'otto' do
  version '0.1.1'
  sha256 '91aaf90903d5decaf0f4317ba72a1d3f932289b429bdee02d2700e1d9137d5b5'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/otto/otto_#{version}_darwin_amd64.zip"
  name 'Otto'
  homepage 'https://www.ottoproject.io/'
  license :mpl

  binary 'otto'
end
