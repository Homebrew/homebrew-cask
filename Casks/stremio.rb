cask :v1 => 'stremio' do
  version '201.15.6'
  sha256 '6e28db2f4899d5aee9d782ee00ae46c45c2be5968161cfc4712b827a3fd8026f'

  # 178.62.254.47 is the official download host per the vendor homepage
  url "http://178.62.254.47/Stremio%#{version}.dmg"
  name 'Stremio'
  homepage 'http://www.strem.io/'
  license :freemium

  app 'Stremio.app'
end
