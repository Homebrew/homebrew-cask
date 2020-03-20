cask 'sia-ui' do
  version '1.4.4'
  sha256 'd525497ea96e16c032b567cbbd5ed61cd14e20d54942f0759364901f8afb4bd1'

  url "https://sia.tech/releases/Sia-UI-v#{version}.dmg"
  appcast 'https://gitlab.com/api/v4/projects/7508674/releases'
  name 'Sia-UI'
  homepage 'https://sia.tech/'

  app 'Sia-UI.app'
end
