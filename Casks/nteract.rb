cask 'nteract' do
  version '0.14.0'
  sha256 '366fa9f3cc56b1cef936eaf5f8038857dd7cd57e457436680b7b3d0868714778'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
