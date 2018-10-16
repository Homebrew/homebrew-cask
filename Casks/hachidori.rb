cask 'hachidori' do
  version '3.0.6'
  sha256 '65456f172adfa429933a158fe88de4482d9557e653b9de8d7bb02e1ce6fc735a'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  depends_on macos: '>= :mavericks'

  app 'Hachidori.app'
end
