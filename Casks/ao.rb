cask 'ao' do
  version '6.7.0'
  sha256 '718b147b2274c24ea972a33ce6675290607a755ea4956c484d8716ca57a56eac'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end
