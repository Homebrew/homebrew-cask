cask 'coyim' do
  version '0.3.7_1'
  sha256 '6e0647e455a2883739799b62bbeb5a9b7a3de6997e87548b525cc11b370a33df'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'
  gpg "#{url}.asc",
      key_id: '8756C4F765C9AC3CB6B85D62379CE192D401AB61'

  app 'CoyIM.app'
end
