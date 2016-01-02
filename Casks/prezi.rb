cask 'prezi' do
  version '5.2.7'
  sha256 '4ed9c0cc71edd5946bd186cd7fe2f9dda3fcbd1cb39d10584f8510171b0af3b5'

  # akamaihd.net is the official download host per the vendor homepage
  url "https://prezi-a.akamaihd.net/desktop/Prezi#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'
  license :gratis

  app 'Prezi.app'
end
