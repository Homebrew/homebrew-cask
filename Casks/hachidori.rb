cask 'hachidori' do
  version '2.0b12'
  sha256 'e22551430945ffce90232485fc4fe89964207b900bcaa09c88243dfc12d05f15'

  # github.com/Atelier-Shiori/hachidori was verified as official when first introduced to the cask
  url "https://github.com/Atelier-Shiori/hachidori/releases/download/#{version}/Hachidori-#{version}.dmg"
  appcast 'https://github.com/Atelier-Shiori/hachidori/releases.atom',
          checkpoint: 'a37270b79c8f43a3a62e286e55562b3b7e1432fb5a394fc0eec918f29ef9e169'
  name 'Hachidori'
  homepage 'https://hachidori.ateliershiori.moe/'

  app 'Hachidori.app'
end
