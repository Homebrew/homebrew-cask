cask :v1 => 'caprine' do
  version '0.1.0'
  sha256 'c153715a9ba190df046525eeb4c1279b98816e2b28276e2000920ef3796dd416'

  url "https://github.com/sindresorhus/caprine/releases/download/#{version}/Caprine-#{version}.zip"
  appcast 'https://github.com/sindresorhus/caprine/releases.atom'
  name 'Caprine'
  homepage 'https://github.com/sindresorhus/caprine'
  license :mit

  app 'Caprine.app'
end
