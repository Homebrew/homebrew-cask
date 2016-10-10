cask 'sonoair' do
  version '1.0-beta-4.0'
  sha256 '2f14f818322f5bbf96833880edb5aee46cda5fa74456d7c951e3d36372c09067'

  url "http://sonoair.mihosoft.eu/releases/#{version}/SonoAir.zip"
  name 'SonoAir'
  homepage 'http://sonoair.mihosoft.eu'

  app 'SonoAir.app'
end
