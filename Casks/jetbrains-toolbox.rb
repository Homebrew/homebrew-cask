cask 'jetbrains-toolbox' do
  version '1.1.2143'
  sha256 '2498a80625b858742a534d0e6b6ba2cea458bb1e7efe967f0e1b3721e11d5957'

  url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.dmg"
  name 'JetBrains Toolbox'
  homepage 'https://www.jetbrains.com/'

  app 'JetBrains Toolbox.app'
end
