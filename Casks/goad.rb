cask 'goad' do
  version '1.3.0'
  sha256 '62c76c90b9fd6d1a1dba9058b57a7ba3af8e09df38d3ea3dc7809422b8c7a8d3'

  # github.com/zeph/goad was verified as official when first introduced to the cask
  url "https://github.com/zeph/goad/releases/download/v#{version}/goad-osx-x86-64.zip"
  name 'Goad'
  # github.com/zeph/goad is a fork with several improvements of goad.io
  homepage 'https://goad.io'

  container type: :zip

  binary 'goad', target: 'goad'
end
