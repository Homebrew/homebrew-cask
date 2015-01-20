cask :v1 => 'lmms' do
  version '1.0.99'
  sha256 '2ce390337a2ee372f76812b5c308ac8f3faad6981d99f0eb3b843149e3ebc98c'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}.dmg"
  homepage 'https://lmms.io'
  license :gpl

  app 'LMMS.app'
end
