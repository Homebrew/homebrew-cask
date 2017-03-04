cask 'coyim' do
  version '0.3.7_1'
  sha256 '4c7efb735eeae165592de359208e2b3aa9580414149c14f44dfcea79815ff526'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  gpg "#{url}.asc", key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
