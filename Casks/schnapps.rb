cask 'schnapps' do
  version '1.2'
  sha256 'aa47011ead3fd64f3263641fe93f6fdf52945763df39295c3abf6aa5ae7f5fe0'

  url "http://www.schnappsformac.com/download/Schnapps_v#{version}.zip"
  appcast 'http://schnappsformac.com/download/appcast.xml',
          checkpoint: '9d8006fdd5db72e9f79ee2814bb794c4aa775710243bf5f96655bfad562664f0'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :commercial

  app 'Schnapps.app'

  postflight do
    suppress_move_to_applications
  end
end
