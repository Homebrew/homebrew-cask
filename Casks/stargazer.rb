cask 'stargazer' do
  version '1.5.3'
  sha256 '2fae109e6e3440f7189b3bbd4d0a0dd31657cb2d4d43b54d9492f80d49b7b8df'

  # github.com/johansten/stargazer was verified as official when first introduced to the cask
  url "https://github.com/johansten/stargazer/releases/download/v#{version}/Stargazer-#{version}.dmg"
  appcast 'https://github.com/johansten/stargazer/releases.atom',
          checkpoint: 'eb24e83176b839818a64a9e5e7b9d0ffa3cbd9d43bd52a781863112a3fd06bf2'
  name 'Stargazer'
  homepage 'https://getstargazer.com/'

  app 'Stargazer.app'
end
