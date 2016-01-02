cask 'keepingyouawake' do
  version '1.3.1'
  sha256 '8a4277fa63d6088f676a34fa82415552eef2122fa49e811ac18a0916689ae1f1'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://github.com/newmarcel/KeepingYouAwake/releases.atom',
          :sha256 => 'c1a4bfb912ac9901b347144703da997c934be8f23bb669666c92213dc070fb3e'
  name 'KeepingYouAwake'
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
