cask :v1 => 'caprine' do
  version '0.2.0'
  sha256 'e51adb5283277f4f6c207143491940cb72f126d1bfcd97dca35ee51fd77478c0'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-osx-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
