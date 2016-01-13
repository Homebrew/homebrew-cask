cask 'platypus' do
  version '5.0'
  sha256 'a14c9f2360feff9f07d5db5eeee238fbc602dccf574c3ebd1ce875fede43bdb1'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          :sha256 => 'b88c3e9846267f04d5f2fb053e9eeb158ef3072f2e53a472803fb5778a63656d'
  name 'Platypus'
  homepage 'http://sveinbjorn.org/platypus'
  license :bsd

  app "Platypus-#{version}/Platypus.app"
end
