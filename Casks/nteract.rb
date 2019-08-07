cask 'nteract' do
  version '0.14.5'
  sha256 '92e28683cb8d39c4975eb28109fd5a639cef4d27c0987aff64dd59d9913ec394'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
