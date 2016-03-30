cask 'coyim' do
  version '0.3.1'
  sha256 'a59b45d89576546a03479dbc2ae8dc70691a495eacd362519e52c4fe3b8a2e1a'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  license :mit
  gpg "#{url}.asc",
      key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
