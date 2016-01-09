cask 'hachidori' do
  version '1.1.7.1'
  sha256 '28da36312ade8d1e4369d4229c9b319c274259b50987644b48c2c164f711c2c7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/chikorita157/hachidori/releases/download/#{version}/Hachidori-#{version}.zip"
  appcast 'https://github.com/chikorita157/hachidori/releases.atom',
          :sha256 => '3767d387127253d1f5fd3fe553a5f1d6d6e9858bbd4f2d02a2cd053cc31831bd'
  name 'Hachidori'
  homepage 'http://hachidori.ateliershiori.moe'
  license :bsd

  app 'Hachidori.app'
end
