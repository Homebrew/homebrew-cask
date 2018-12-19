cask 'mandrake' do
  version '3.2'
  sha256 'f828625c31d2f031bc00836e0e9e6a69d59e7f2aa9d480d4c459bc85e20ab191'

  url "https://sveinbjorn.org/files/software/mandrake/ManDrake-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/ManDrakeAppcast.xml'
  name 'ManDrake'
  homepage 'https://sveinbjorn.org/mandrake'

  app 'ManDrake.app'
end
