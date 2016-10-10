cask 'coyim' do
  version '0.3.6'
  sha256 '12e098ab05a33f9219acecb0eb4265ab35d7c535e33577cc70dc00685ca22417'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  gpg "#{url}.asc",
      key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
