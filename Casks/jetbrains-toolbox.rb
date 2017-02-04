cask 'jetbrains-toolbox' do
  version '1.1.2143'
  sha256 '2498a80625b858742a534d0e6b6ba2cea458bb1e7efe967f0e1b3721e11d5957'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release',
          checkpoint: '4112c22398bef77e9e8e0864a5b1e8b8cd7c03833bbad66fff46378ce2253a88'
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/toolbox/app/'

  auto_updates true

  app 'JetBrains Toolbox.app'
end
