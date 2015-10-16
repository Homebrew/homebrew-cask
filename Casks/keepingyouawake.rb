cask :v1 => 'keepingyouawake' do
  version '1.2.1'
  sha256 'e1f40532043949b785d0cb1d6f6a5a3a4ed4073a3db4ca6ed9b3d0275d7d1c2f'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
