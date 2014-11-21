cask :v1 => 'istumbler' do
  version '100'
  sha256 '71f6a6b0e255a853664ed4900835a42f2d23dcb05de35acfb3ac2ec1c5fb2edc'

  url "https://istumbler.net/downloads/istumbler-#{version}.dmg"
  homepage 'http://istumbler.net/'
  license :unknown

  app 'iStumbler.app'
end
