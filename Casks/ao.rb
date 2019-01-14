cask 'ao' do
  version '6.6.0'
  sha256 'ec46e9ee8eb164722af9815a0b2c3677259c41985b70c275b29e8d323c1b6108'

  url "https://github.com/klaussinani/ao/releases/download/v#{version}/Ao-#{version}.dmg"
  appcast 'https://github.com/klaussinani/ao/releases.atom'
  name 'Ao'
  homepage 'https://github.com/klaussinani/ao'

  app 'Ao.app'
end
