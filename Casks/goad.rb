cask 'goad' do
  version '1.2.0.ci6'
  sha256 'bdd79b7c70a343c551e2d1903c46bda59b3d7426794b4ca9575a76eca2ef36ca'

  # github.com/zeph/goad was verified as official when first introduced to the cask
  url "https://github.com/zeph/goad/releases/download/v#{version}/goad-osx-x86-64.zip"
  name 'Goad'
  # github.com/zeph/goad is a fork with several improvements of goad.io
  homepage 'https://goad.io'

  container type: :zip

  binary 'goad', target: 'goad'
end
