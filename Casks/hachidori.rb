cask 'hachidori' do
  version '3.1.1'
  sha256 '2161e7f2b1fc0edf9019d27da54adb57961cfc8d605672d433b6ce26c34a3b48'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
