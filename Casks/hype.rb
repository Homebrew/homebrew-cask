cask 'hype' do
  version '3.5.4-550'
  sha256 '0c9b9e446c1a510284ffb258a80788bfdc19ac10b07888e4903506bec0b03edf'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-}, '')}.app.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: 'a68235369319becf3dfb45512d6e02ee67e5c36ba4e4db2a02d7736b80320246'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
