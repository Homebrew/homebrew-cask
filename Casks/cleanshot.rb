cask 'cleanshot' do
  version '3.0'
  sha256 '6e20aa999f2d6512070af622c2ec31f9ba6a96cd57d83ca9822e4fda79c235d7'

  url "https://updates.getcleanshot.com/v#{version.major}/CleanShot-X-#{version}.dmg"
  appcast "https://updates.getcleanshot.com/v#{version.major}/appcast.xml"
  name 'CleanShot'
  homepage 'https://getcleanshot.com/'

  auto_updates true

  app 'CleanShot X.app'
end
