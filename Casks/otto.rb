cask :v1 => 'otto' do
  version '0.1.2'
  sha256 'ffdcb201227dd878361777336ea6387f7bdf5193d4a5ad65a3955f3e18e2a2b6'

  # bintray.com is the official download host per the vendor homepage
  url "https://dl.bintray.com/mitchellh/otto/otto_#{version}_darwin_amd64.zip"
  name 'Otto'
  homepage 'https://www.ottoproject.io/'
  license :mpl

  binary 'otto'
end
