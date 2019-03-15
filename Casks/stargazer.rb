cask 'stargazer' do
  version '1.7.0'
  sha256 'b6f735a4409f012dc2fe8a4a35ae97e3e0d361e7fdf8481a7bda3731bd8a814a'

  # github.com/johansten/stargazer was verified as official when first introduced to the cask
  url "https://github.com/johansten/stargazer/releases/download/v#{version}/Stargazer-#{version}.dmg"
  appcast 'https://github.com/johansten/stargazer/releases.atom'
  name 'Stargazer'
  homepage 'https://getstargazer.com/'

  app 'Stargazer.app'
end
