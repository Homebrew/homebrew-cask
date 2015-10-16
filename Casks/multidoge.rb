cask :v1 => 'multidoge' do
  version '0.1.4'
  sha256 '12ca734040c6dc887c7b17dbaf92c3320086522d6dbd1bb63ca9fb0c6d6c46de'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  appcast 'https://github.com/langerhans/multidoge/releases.atom'
  name 'MultiDoge'
  homepage 'http://multidoge.org/'
  license :mit

  app 'MultiDoge.app'
end
