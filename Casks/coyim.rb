cask 'coyim' do
  version '0.2'
  sha256 'cdcd8e515eae9c613eb4f73a6467b7ef1ecc3dc601ee841095d6330740d46404'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  license :mit
  gpg "#{url}.asc",
      key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
