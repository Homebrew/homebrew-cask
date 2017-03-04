cask 'mandrake' do
  version '3.1'
  sha256 '020ba2cdbe2ab219e7135311b35ba05e51c65c45e297c392e874a08c54b566f1'

  url "http://sveinbjorn.org/files/software/mandrake/ManDrake-#{version}.zip"
  appcast 'http://sveinbjorn.org/files/appcasts/ManDrakeAppcast.xml',
          checkpoint: 'bbe07bdbf03a51b27ccb77580de91c8fa3d74e0cbe1d567386f632e0fa6cc515'
  name 'ManDrake'
  homepage 'https://sveinbjorn.org/mandrake'

  app 'ManDrake.app'
end
