cask 'hachidori' do
  version '3.2.2'
  sha256 '007d6bd3105127e78646e6bb9d8c3be9c5ec44473cf5d8e6ed3f0ef3aa71b170'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://malupdaterosx.moe/hachidori/'

  depends_on macos: '>= :el_capitan'

  app 'Hachidori.app'
end
