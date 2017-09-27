cask 'catlight' do
  version '2.10.3'
  sha256 '2b58a1c8e3d3f7b64d63330d668a294d1fb45afd76b8d9bccd1898563d0d2269'

  url "https://www.catlight.io/dl/mac/beta/setup-#{version}.zip"
  name 'catlight'
  homepage 'https://catlight.io/'

  depends_on macos: '<= 10.12'

  app 'Catlight.app'
end
