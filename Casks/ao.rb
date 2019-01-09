cask 'ao' do
  version '6.4.0'
  sha256 '898046c5e25d9a2e3a0bc77dbbdebd1f05e2e2810b19a38db13e89db9bcec3ce'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end
