cask 'mandrake' do
  version '3.1'
  sha256 '020ba2cdbe2ab219e7135311b35ba05e51c65c45e297c392e874a08c54b566f1'

  url "https://sveinbjorn.org/files/software/mandrake/ManDrake-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/ManDrakeAppcast.xml'
  name 'ManDrake'
  homepage 'https://sveinbjorn.org/mandrake'

  app 'ManDrake.app'
end
