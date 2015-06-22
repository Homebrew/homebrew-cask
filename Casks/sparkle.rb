cask :v1 => 'sparkle' do
  version '1.10.0'
  sha256 '415d9a860453e24aa5cb07fe850eeb1e90a8296f926617d7e1a7521a2e2f7cae'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom'
  name 'Sparkle'
  homepage 'http://sparkle-project.org/'
  license :mit

  app 'Sparkle Test App.app'
end
