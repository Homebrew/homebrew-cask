cask 'mandrake' do
  version '3.0'
  sha256 '42be0986d5ae47ffa10e27d5dea04d5fb519884deb1236d5bb8b36c62e899d77'

  url "http://sveinbjorn.org/files/software/mandrake/ManDrake-#{version}.zip"
  appcast 'http://sveinbjorn.org/files/appcasts/ManDrakeAppcast.xml',
          checkpoint: '823a16ee9b605408873ddac7c801b6df98fd4cf847a6edbdbd89457d3072f433'
  name 'ManDrake'
  homepage 'http://sveinbjorn.org/mandrake'

  app 'ManDrake.app'
end
