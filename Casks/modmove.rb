cask 'modmove' do
  version '1.0.1'
  sha256 'e26b49608d57659e4a7a22b3e48a10d6636d79022240ea555357ef9ff323f0c9'

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"
  appcast 'https://github.com/keith/modmove/releases.atom',
          checkpoint: '88f04c4c40d50c0174706559bcfd55de28ee2ee4d0cfd737e9033d879bedec53'
  name 'ModMove'
  homepage 'https://github.com/keith/modmove'

  accessibility_access true

  app 'ModMove.app'
end
