cask 'hype' do
  version '3.5.2-530'
  sha256 'b5efc92a9040d8272291a4d9e5c0838d6a649cba922b07bb87e38fc1ef256a0d'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-}, '')}.app.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '9cc4935d10c48fb7b55fe4bec76643026c55bdea4327b9e08329a8cc431717f0'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app 'Hype2.app', target: "Hype #{version.to_i}.app"
end
