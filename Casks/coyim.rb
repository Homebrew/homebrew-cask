cask 'coyim' do
  version '0.3.5'
  sha256 '04746c562bc2f9ee49d62b956fc5a3cd763661fa30980a8050845b8cb0154772'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  license :mit
  gpg "#{url}.asc",
      key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
