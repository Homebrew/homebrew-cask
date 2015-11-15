cask :v1 => 'multidoge' do
  version '0.1.6'
  sha256 'ca6ff07ecb1ecaad3040969270b963edae22875fa92e8695bf4ebcc068061441'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/langerhans/multidoge/releases/download/v#{version}/multidoge-#{version}.dmg"
  appcast 'https://github.com/langerhans/multidoge/releases.atom'
  name 'MultiDoge'
  homepage 'http://multidoge.org/'
  license :mit

  app 'MultiDoge.app'
end
