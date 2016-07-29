cask 'modmove' do
  version '1.0.0'
  sha256 '1d0cc13c38a4f76ae4f3a5d24c31553d4607c2d180ec1cdc93b43ee8787fe679'

  url "https://github.com/keith/modmove/releases/download/#{version}/ModMove.app.zip"
  appcast 'https://github.com/keith/modmove/releases.atom',
          checkpoint: '827b0314616db7d97a0c5f9cfc2252097a815781673ccf4bcc87aec34a691667'
  name 'ModMove'
  homepage 'https://github.com/keith/modmove'
  license :mit

  accessibility_access true

  app 'ModMove.app'
end
