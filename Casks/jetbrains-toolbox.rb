cask 'jetbrains-toolbox' do
  version '1.5.2871'
  sha256 '1a9c86d2c020a7f454df3bdc3f60ebd9816e569ca37ed6ec62da3853c4821891'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '988da9360a907810e392d075e2bef14315646f313d4660b8257016a49765371d'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
