cask 'electerm' do
  version '1.0.19'
  sha256 '10f815767ce6f38aa9604169936638186b292052d2a651f5506858df0abac679'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
