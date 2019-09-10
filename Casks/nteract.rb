cask 'nteract' do
  version '0.15.0'
  sha256 '1356996bce666439052cec6322105f80c9da592866384c711040c5a285f1988e'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
