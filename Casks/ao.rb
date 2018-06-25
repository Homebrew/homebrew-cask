cask 'ao' do
  version '5.6.0'
  sha256 'eebdf605afd5bc9e7f0246d9317f578b3b82be99e49a78bb0e990e9e0fb3c37e'

  url "https://github.com/klauscfhq/ao/releases/download/v#{version}/ao-macos-#{version}.dmg"
  appcast 'https://github.com/klauscfhq/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klauscfhq/ao'

  app 'Ao.app'
end
