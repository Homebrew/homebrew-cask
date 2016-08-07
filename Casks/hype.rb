cask 'hype' do
  version '3.5.3-538'
  sha256 'ce348554a003f3328a758a6675bbfbf2b27440b06edac35aa6d9c69fb57a3191'

  url "http://static.tumult.com/hype/download/Hype-#{version.sub(%r{^.*?-}, '')}.app.zip"
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '4ef4ee56a1e6db36ab432324bbe219dc2cb6bf6809b8fbcbcaae53c9a8a24bdd'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/caskroom/homebrew-cask/pull/15762
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
