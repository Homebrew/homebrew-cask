cask 'nteract' do
  version '0.22.4'
  sha256 '0f08015dd130433f63db2d8aeb4119bc2403033fed9716a80b4fcbb6dcbfef29'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
