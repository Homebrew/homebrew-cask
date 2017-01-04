cask 'espresso' do
  version '2.2.4'
  sha256 '099528d34645711db15ef9ca586fbe62e4440c981caba5ee3b6ca4816a94a6a9'

  url "https://macrabbit.com/espresso/downloads/Espresso%20#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '27e974e9e7538ad6a2d8efa6ef3edc8bba0e607aca2c6419350a8baef24f4baa'
  name 'Espresso'
  homepage 'http://macrabbit.com/espresso/'

  app 'Espresso.app'
end
