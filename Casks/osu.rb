cask 'osu' do
  version '2020190709-2'
  sha256 '3a9505667ad8fbd2cbabf7f92372bd8d85765410bdf12b78ef0eda764abeca88'

  url "https://m1.ppy.sh/osu%21%20#{version}.app.zip"
  name 'osu!'
  homepage 'https://osu.ppy.sh/'

  app 'osu!.app'
end
