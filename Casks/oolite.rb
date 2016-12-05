cask 'oolite' do
  version '1.84'
  sha256 '8a10338202d46d6b1621e7ad86914c76c11f5ff5c08781fb5bc1f053c99e0e74'

  # github.com/OoliteProject/oolite was verified as official when first introduced to the cask
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast 'https://github.com/OoliteProject/oolite/releases.atom',
          checkpoint: '20788fda6d734f23ff2c7a9a26f4346db7d3ead50dfa01bf5cc5e39812663a96'
  name 'oolite'
  homepage 'http://www.oolite.org/'

  app "Oolite #{version}/Oolite.app"
end
