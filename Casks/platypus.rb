cask :v1 => 'platypus' do
  version '5.0'
  sha256 'a14c9f2360feff9f07d5db5eeee238fbc602dccf574c3ebd1ce875fede43bdb1'

  url "http://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'http://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml',
          :sha256 => '2eb402188ef9006152796d65342be4ef75fd5fbc3c8a516f7f3a294509a9a5b9'
  name 'Platypus'
  homepage 'http://sveinbjorn.org/platypus'
  license :bsd

  app "Platypus-#{version}/Platypus.app"
end
