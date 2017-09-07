cask 'mojibar' do
  version '2.6.1'
  sha256 '96d3ede16691391a1772ce65f7c7fe69b1bc147a76b7f4939e360a25e5d988d8'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '60418016208b618c82bd6fffbb7390a6a9b136a2b7e1e96c78f68d7ceac7bca2'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
