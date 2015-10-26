cask :v1 => 'buildasaur' do
  version '0.6.3'
  sha256 '347edecdade78a3959bf6c00f43d0d5b7eb33e78b1f53363b36cc8b61f3593f5'

  url "https://github.com/czechboy0/Buildasaur/releases/download/v#{version}/Buildasaur.app.zip"
  appcast 'https://github.com/czechboy0/Buildasaur/releases.atom'
  name 'Buildasaur'
  homepage 'https://github.com/czechboy0/Buildasaur'
  license :mit

  app 'Buildasaur.app'
end
