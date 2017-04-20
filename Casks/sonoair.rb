cask 'sonoair' do
  version '1.0-beta-6.1'
  sha256 'f2870a2ee7e7cc3faf5ac315e5a8e03bc592f95862112ad433c39306ebdbc4b7'

  url "http://sonoair.mihosoft.eu/releases/#{version}/SonoAir.zip"
  name 'SonoAir'
  homepage 'http://sonoair.mihosoft.eu/'

  app 'SonoAir.app'
end
