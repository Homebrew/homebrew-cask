cask 'electerm' do
  version '1.2.2'
  sha256 'bd17f856a28b0b9cad7900464a55460d4e023e9f29b95615215956b17ef7a1e5'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
