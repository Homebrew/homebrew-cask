cask :v1 => 'corsixth' do
  version '0.40'
  sha256 'd4f3a289954fc2eb400615114f0a8bd729e38b310beedf20dbe97a0e1cecb127'

  url "https://github.com/CorsixTH/CorsixTH/releases/download/v#{version}/CorsixTH-#{version}-OSX.dmg"
  appcast 'https://github.com/CorsixTH/CorsixTH/releases.atom'
  name 'CorsixTH'
  homepage 'https://github.com/CorsixTH/CorsixTH'
  license :mit

  app 'CorsixTH/CorsixTH.app'
  app 'CorsixTH/AnimView.app'
  app 'CorsixTH/MapEdit.app'
end
