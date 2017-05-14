cask 'oolite' do
  version '1.84'
  sha256 '8a10338202d46d6b1621e7ad86914c76c11f5ff5c08781fb5bc1f053c99e0e74'

  # github.com/OoliteProject/oolite was verified as official when first introduced to the cask
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast 'https://github.com/OoliteProject/oolite/releases.atom',
          checkpoint: 'e2043a4b70ccdce152a6c4f723bd7946656be29da56dccfeb3389066c462ba49'
  name 'oolite'
  homepage 'http://www.oolite.org/'

  app "Oolite #{version}/Oolite.app"
end
