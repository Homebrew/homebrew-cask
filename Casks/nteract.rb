cask 'nteract' do
  version '0.8.0'
  sha256 '3a62a4b77e55b082eebc001c477380658a780c26e514c58198336d24e51a3c0c'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom',
          checkpoint: 'e6b272fcedef05ea2a7fe44f5e6e0b4bfb7f1615cc8d6c35e256c76750ca11dd'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
