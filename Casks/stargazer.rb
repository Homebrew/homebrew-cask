cask 'stargazer' do
  version '1.5.4'
  sha256 '3ae4f03d76219292e6babf468d44ab0e7ed2502b2ab6d3ebde6dabcfec725755'

  # github.com/johansten/stargazer was verified as official when first introduced to the cask
  url "https://github.com/johansten/stargazer/releases/download/v#{version}/Stargazer-#{version}.dmg"
  appcast 'https://github.com/johansten/stargazer/releases.atom',
          checkpoint: '42ec9c5752a9f76c5adcb16e2a17985ff8c328f21c140f41243c098392fb4d0d'
  name 'Stargazer'
  homepage 'https://getstargazer.com/'

  app 'Stargazer.app'
end
