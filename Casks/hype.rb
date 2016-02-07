cask 'hype' do
  version '3.5.0-518'
  sha256 '66d2df2b982aa4634583381046a7c3bbd93b9fe8e7232663d51fdc8bc52358f3'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-}, '')}.app.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '1afa2513499a16bd79404c548e5be9c0f5abba40553d4d231236eb504ac31ef7'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app 'Hype2.app', target: "Hype #{version.to_i}.app"
end
