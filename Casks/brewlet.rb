cask 'brewlet' do
  version '1.3'
  sha256 'ddced5614bca49017906b7bb71e4c599fa159837daa4011ca2fd3913d68eee59'

  url "https://github.com/zkokaja/Brewlet/releases/download/v#{version}/Brewlet.zip"
  appcast 'https://github.com/zkokaja/Brewlet/releases.atom'
  name 'Brewlet'
  homepage 'https://github.com/zkokaja/Brewlet'

  app 'Brewlet.app'
end
