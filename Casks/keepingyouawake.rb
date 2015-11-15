cask :v1 => 'keepingyouawake' do
  version '1.3'
  sha256 'edc08fa7e8504035ab721cc6a2c8fb2c482c5cc82d6666410444738eacaa0748'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
