cask 'coyim' do
  version '0.3.8'
  sha256 '80ef836252349f867cd48a2532b65505aceac480c25b02472a1416b88d3e9494'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  gpg "#{url}.asc", key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
