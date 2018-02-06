cask 'nteract' do
  version '0.7.0'
  sha256 'c0080ca1447a0ff595d4d9fcae23edb64d2d8f5b8d9c8704c0c4642154de6b68'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: '134339cee7260132a626da5eb729647159746326af07c5ab3ef14712a7436bad'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
